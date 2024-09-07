using CommonServiceLocator;
using GalaSoft.MvvmLight.Ioc;
using DigitaPlatform.ViewModels;
using DigitaPlatForm.IDataAccess;
using DigitaPlatForm.DataAccess;
namespace DigitaPlatform
{
    public class ViewModelLocator
    {
        public ViewModelLocator()
        {
            ServiceLocator.SetLocatorProvider(() => SimpleIoc.Default);

            SimpleIoc.Default.Register<LoginViewModel>();
            SimpleIoc.Default.Register<MainViewModel>();
            SimpleIoc.Default.Register<ILocalDataAccess, LocalDataAccess>();
            SimpleIoc.Default.Register<ConfigViewModel>();
        }

        //这两个属性是用于在WPF的视图(View)中绑定ViewModel的。
        public LoginViewModel LoginViewModel => ServiceLocator.Current.GetInstance<LoginViewModel>();
        public MainViewModel MainViewModel => ServiceLocator.Current.GetInstance<MainViewModel>();
        public ConfigViewModel ConfigViewModel => ServiceLocator.Current.GetInstance<ConfigViewModel>();

    }
}
