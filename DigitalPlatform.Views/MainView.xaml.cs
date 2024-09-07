using DigitaPlatform.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace DigitaPlatform.Views
{
    /// <summary>
    /// MainView.xaml 的交互逻辑
    /// </summary>
    public partial class MainView : Window
    {
        public MainView()
        {
            // 这行代码创建了一个新的LoginView实例，并以模态对话框的方式显示它。
            // ShowDialog方法会阻塞当前线程，直到对话框被关闭
            //当对话框关闭时，ShowDialog方法会返回一个bool值，表示对话框的关闭结果。
            if (new LoginView().ShowDialog()!=true) {
                //如果用户关闭LoginView页面，会返回false，执行下面这句，关闭这个所有界面。
                Application.Current.Shutdown();
            }
            InitializeComponent();
            // 注册
            ActionManager.Register<object>("AAA", new Func<object, bool>(ShowConfigView));
        }
        private bool ShowConfigView(object obj)
        {
            //设置新创建的 ComponentConfigView 实例的 Owner 属性为当前类的实例
            // Owner 属性设置后，新创建的 ComponentConfigView 实例会自动显示在当前类的实例上
            //wner 属性是一个特殊的属性，它通常用于关联子窗口与父窗口。
            //在 WPF 中，当您创建一个子窗口时，可以将其设置为另一个窗口的子窗口，这样子窗口就会与父窗口绑定在一起。
            //当父窗口最小化或关闭时，子窗口也会相应地关闭或隐藏。
            return new ComponentConfigView() { Owner = this }.ShowDialog() == true;
            //  == true 检查 ShowDialog 方法的返回值是否为 true。
            // 如果用户点击了对话框上的确定按钮，通常 ShowDialog 会返回 true；
            // 如果用户点击取消或关闭对话框，通常返回 false。
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
