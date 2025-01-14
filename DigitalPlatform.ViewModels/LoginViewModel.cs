﻿using CommonServiceLocator;
using DigitaPlatform.Models;
using DigitaPlatForm.IDataAccess;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace DigitaPlatform.ViewModels
{
    public class LoginViewModel:ViewModelBase
    {
        public UserModel User { get; set; }
        public RelayCommand<object> LoginCommand { get; set; }
        public string _failedMsg;
        public string FailedMsg
        {
            get { return _failedMsg; }
            set { Set(ref _failedMsg, value); }
        }
        ILocalDataAccess _localDataAccess;


        //利用依赖注入得到localDataAccess实例
        public LoginViewModel(ILocalDataAccess localDataAccess)
        {
            _localDataAccess = localDataAccess;
            if (!IsInDesignMode)
            {
                User = new UserModel();
                LoginCommand = new RelayCommand<object>(DoLogin);
            }
        }
        private void DoLogin(object obj)
        {
            // 对接数据库
            try
            {
                var data = _localDataAccess.Login(User.UserName, User.Password);
                if (data == null) throw new Exception("登录失败，没有用户信息");

                // 记录一下主窗口所需要的用户信息，对于SimpleIOC   同一个实例，默认是单例
                var main = ServiceLocator.Current.GetInstance<MainViewModel>();
                if (main != null)
                {
                    main.GlobalUserInfo.UserName = User.UserName;
                    main.GlobalUserInfo.Password = User.Password;
                    main.GlobalUserInfo.RealName = data.Rows[0]["real_name"].ToString()!;
                    main.GlobalUserInfo.UserType = int.Parse(data.Rows[0]["user_type"].ToString()!);
                    main.GlobalUserInfo.Gender = int.Parse(data.Rows[0]["gender"].ToString()!);
                    main.GlobalUserInfo.Department = data.Rows[0]["department"].ToString()!;
                    main.GlobalUserInfo.PhoneNumber = data.Rows[0]["phone_num"].ToString()!;
                }
                
                (obj as Window).DialogResult = true;
            }
            catch (Exception ex)
            {
                FailedMsg = ex.Message;
            }
        }
    }
}
