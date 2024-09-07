using DigitaPlatform.Models;
using DigitaPlatform.Common;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using DigitaPlatForm.IDataAccess;

namespace DigitaPlatform.ViewModels
{
  

    public class MainViewModel : ViewModelBase
    {
        private int _viewBlur = 0;

        public int ViewBlur
        {
            get { return _viewBlur; }
            set { Set(ref _viewBlur, value); }
        }

        public UserModel GlobalUserInfo { get; set; } = new UserModel();

        private object _viewContent;

        public object ViewContent
        {
            get { return _viewContent; }
            set { Set(ref _viewContent, value); }
        }


        public List<MenuModel> Menus { get; set; }
        public RelayCommand<object> SwitchPageCommand { get; set; }


        // Monitor
        public List<RankingItemModel> RankingList { get; set; }
        public List<MonitorWarnningModel> WarnningList { get; set; }

        public List<DeviceItemModel> DeviceList { get; set; }

        public RelayCommand ComponentsConfigCommand { get; set; }

        ILocalDataAccess _localDataAccess;
        public MainViewModel(ILocalDataAccess localDataAccess)
        {
            _localDataAccess = localDataAccess;
            if (!IsInDesignMode)
            {
                // 主窗口数据
                Menus = new List<MenuModel>();
                Menus.Add(new MenuModel
                {
                    IsSelected = true,
                    MenuHeader = "监控",
                    MenuIcon = "\ue639",
                    TargetView = "MonitorPage"
                });
                Menus.Add(new MenuModel
                {
                    MenuHeader = "趋势",
                    MenuIcon = "\ue61a",
                    TargetView = "TrendPage"
                });
                Menus.Add(new MenuModel
                {
                    MenuHeader = "报警",
                    MenuIcon = "\ue60b",
                    TargetView = "AlarmPage"
                });
                Menus.Add(new MenuModel
                {
                    MenuHeader = "报表",
                    MenuIcon = "\ue703",
                    TargetView = "ReportPage"
                });
                Menus.Add(new MenuModel
                {
                    MenuHeader = "配置",
                    MenuIcon = "\ue60f",
                    TargetView = "SettingsPage"
                });

                ShowPage(Menus[0]);
                SwitchPageCommand = new RelayCommand<object>(ShowPage);

                // Monitor
                Random random = new Random();
                #region 用气排行
                string[] quality = new string[] { "车间-1", "车间-2", "车间-3", "车间-4",
                "车间-5" };
                RankingList = new List<RankingItemModel>();
                foreach (var q in quality)
                {
                    RankingList.Add(new RankingItemModel()
                    {
                        Header = q,
                        PlanValue = random.Next(100, 200),
                        FinishedValue = random.Next(10, 150),
                    });
                }
                #endregion

                #region 设备提醒
                WarnningList = new List<MonitorWarnningModel>()
                {
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：故障",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") },
                  new MonitorWarnningModel{Message= "PLT-01：保养到期",
                      DateTime=DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") }
                };
                #endregion
                ComponentsConfigCommand = new RelayCommand(ShowConfig);

                // 初始化组件信息
                this.ComponentsInit();
            }
        }

        private void ComponentsInit()
        {
            var ds = _localDataAccess.GetDevices().Select(d =>
            {
                return new DeviceItemModel()
                {
                    X = double.Parse(d.X),
                    Y = double.Parse(d.Y),
                    Z = int.Parse(d.Z),
                    Width = double.Parse(d.W),
                    Height = double.Parse(d.H),
                    DeviceType = d.DeviceTypeName,
                    DeviceNum = d.DeviceNum
                };
            });
            DeviceList = ds.ToList();

            this.RaisePropertyChanged(nameof(DeviceList));
        }

        private void ShowPage(object obj)
        {
            // Bug：对象会重复创建，需要处理
            // 第80行解决

            var model = obj as MenuModel;
            if (model != null)
            {
                if (ViewContent != null && ViewContent.GetType().Name == model.TargetView) return;

                Type type = Assembly.Load("DigitaPlatform.Views")
                    .GetType("DigitaPlatform.Views.Pages." + model.TargetView)!;
                ViewContent = Activator.CreateInstance(type)!;
            }
        }

        private void ShowConfig()
        {
            if (GlobalUserInfo.UserType > 0)
            {
                this.ViewBlur = 5;
                // 可以打开编辑   启动窗口   主动
                if (ActionManager.ExecuteAndResult<object>("AAA", null))
                {
                    // 刷新   配置文件/数据库
                    ComponentsInit();
                }
                this.ViewBlur = 0;
            }
            else
            {
                // 提示没有权限操作
            }
        }

        public void Release()
        {
            base.Cleanup();
        }
    }
}
