using DigitaPlatform.Common;
using DigitaPlatform.Entities;
using DigitaPlatform.Models;
using DigitaPlatForm.IDataAccess;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System.Collections.ObjectModel;
using System.IO.Ports;
using System.Reflection;
using System.Windows;
using System.Windows.Input;
namespace DigitaPlatform.ViewModels
{

    /// <summary>
    /// 对应窗口的业务逻辑
    /// </summary>
    public class ConfigViewModel : ViewModelBase
    {
        public ObservableCollection<DeviceItemModel> DeviceList { get; set; } = new ObservableCollection<DeviceItemModel>();
        public List<PropOptionModel> PropOptions { get; set; }

        private DeviceItemModel currentDevice;
        public DeviceItemModel CurrentDevice
        {
            get
            {
                return currentDevice;
            }
            set
            {
                Set(ref currentDevice, value);
            }
        }

        public List<ThumbModel> ThumbList { get; set; }

        public RelayCommand<object> ItemDropCommand { get; set; }
        public RelayCommand<object> KeyDownCommand { get; set; }
        public RelayCommand<object> SaveCommand { get; set; }
        public RelayCommand<DeviceItemModel> DeviceSelectedCommand { get; set; }

        ILocalDataAccess _localDataAccess;

        public ConfigViewModel(ILocalDataAccess localDataAccess)
        {
            _localDataAccess = localDataAccess;

            if (!IsInDesignMode)
            {
                ThumbList = new List<ThumbModel>();
                // 通过数据库维护
                var ts = localDataAccess.GetThumbList();
                ThumbList = ts.GroupBy(t => t.Category).Select(g => new ThumbModel
                {
                    Header = g.Key,
                    Children = g.Select(b => new ThumbItemModel
                    {
                        Icon = "pack://application:,,,/DigitaPlatform.Assets;component/Images/Thumbs/" + b.Icon,
                        Header = b.Header,
                        TargetType = b.TargetType,
                        Width = b.Width,
                        Height = b.Height
                    }).ToList()
                }).ToList();


                ComponentsInit();

                ItemDropCommand = new RelayCommand<object>(DoItemDropCommand);
                SaveCommand = new RelayCommand<object>(DoSaveCommand);

                DeviceSelectedCommand = new RelayCommand<DeviceItemModel>(model =>
                {
                    // 记录一个当前选中组件
                    // Model = DeviceItemModel
                    // 对当前组件进行选中
                    // 进行属性、点位编辑
                    if (CurrentDevice != null)
                        CurrentDevice.IsSelected = false;
                    if (model != null)
                    {
                        model.IsSelected = true;
                    }

                    CurrentDevice = model;
                });

                KeyDownCommand = new RelayCommand<object>(obj =>
                {
                    if (CurrentDevice != null)
                    {
                        var ea = obj as KeyEventArgs;
                        if (ea.Key == Key.Up)
                            CurrentDevice.Y--;
                        else if (ea.Key == Key.Down)
                            CurrentDevice.Y++;
                        else if (ea.Key == Key.Left)
                            CurrentDevice.X--;
                        else if (ea.Key == Key.Right)
                            CurrentDevice.X++;

                        else if (ea.Key == Key.Escape)
                            CurrentDevice.IsSelected = false;
                    }
                });

                // 初始化组件通信属性选项
                var pos = localDataAccess.GetPropertyOption();
                PropOptions = pos.Select(p =>
                {
                    var pom = new PropOptionModel
                    {
                        Header = p.PropHeader,
                        PropName = p.PropName,
                        PropType = p.PropType
                    };
                    // 修改目的有两个：
                    // 1、初始化当前属性选项所对应的值的选项
                    // 2、希望加载值选项后，初始化一个默认选项
                    var list = InitOptions(p.PropName, out int DefaultIndex);
                    pom.ValueOptions = list;
                    pom.DefaultIndex = DefaultIndex;

                    return pom;
                }
                ).ToList();
            }
        }

        private void ComponentsInit()
        {
            var ds = _localDataAccess.GetDevices().Select(d =>
            {
                var dim = new DeviceItemModel()
                {
                    Header = d.Header,
                    X = double.Parse(d.X),
                    Y = double.Parse(d.Y),
                    Z = int.Parse(d.Z),
                    Width = double.Parse(d.W),
                    Height = double.Parse(d.H),
                    DeviceType = d.DeviceTypeName,
                    DeviceNum = d.DeviceNum,
                    DeleteCommand = new RelayCommand<DeviceItemModel>(model => DeviceList.Remove(model)),
                    Devices = () => DeviceList.ToList()
                };
                // 初始化每个组件的右键菜单 
                dim.InitContextMenu();

                return dim;
            });
            DeviceList = new ObservableCollection<DeviceItemModel>(ds);

            // 水平/垂直对齐线
            DeviceList.Add(new DeviceItemModel { X = 0, Y = 0, Width = 2000, Height = 0.5, Z = 9999, DeviceType = "HL", IsVisible = false });
            DeviceList.Add(new DeviceItemModel { X = 0, Y = 0, Width = 0.5, Height = 2000, Z = 9999, DeviceType = "VL", IsVisible = false });
            // 宽度/高度对齐线
            DeviceList.Add(new DeviceItemModel { X = 0, Y = 0, Width = 0, Height = 15, Z = 9999, DeviceType = "WidthRule", IsVisible = false });
            DeviceList.Add(new DeviceItemModel { X = 0, Y = 0, Width = 15, Height = 0, Z = 9999, DeviceType = "HeightRule", IsVisible = false });
        }

        private void DoItemDropCommand(object obj)
        {
            DragEventArgs e = obj as DragEventArgs;
            var data = (ThumbItemModel)e.Data.GetData(typeof(ThumbItemModel));

            var point = e.GetPosition((IInputElement)e.Source);
            var dim = new DeviceItemModel
            {
                Header = data.Header,
                DeviceNum = DateTime.Now.ToString("yyyyMMddHHmmssFFF"),
                DeviceType = data.TargetType,
                Width = data.Width,
                Height = data.Height,
                X = point.X - data.Width / 2,
                Y = point.Y - data.Height / 2,

                DeleteCommand = new RelayCommand<DeviceItemModel>(model => DeviceList.Remove(model)),
                Devices = () => DeviceList.ToList()
            };
            dim.InitContextMenu();
            DeviceList.Add(dim);
        }

        private void DoSaveCommand(object obj)
        {
            // 注意一个问题：对齐对象
            var ds = DeviceList
                .Where(d => !new string[] { "HL", "VL", "WidthRule", "HeightRule" }.Contains(d.DeviceType))
                .Select(dev => new DeviceEntity
                {
                    DeviceNum = dev.DeviceNum,
                    X = dev.X.ToString(),
                    Y = dev.Y.ToString(),
                    Z = dev.Z.ToString(),
                    W = dev.Width.ToString(),
                    H = dev.Height.ToString(),
                    DeviceTypeName = dev.DeviceType,

                    // 转换属性集合
                    Props = dev.PropList.Select(dp => new DevicePropItemEntity
                    {
                        PropName = dp.PropName,
                        PropValue = dp.PropValue,
                    }).ToList(),

                    // 转换点位集合
                    Vars = dev.VariableList.Select(dv => new VariableEntity
                    {
                        VarNum = dv.VarNum,
                        Header = dv.VarName,
                        Address = dv.VarAddress,
                        Offset = dv.Offset,
                        Modulus = dv.Modulus
                    }).ToList()
                });
            if (_localDataAccess.SaveDevice(ds.ToList()) != ds.Count())
            {
                // 提示
                return;
            }
            (obj as Window).DialogResult = true;
        }

        private List<string> InitOptions(string propName, out int OptionsDefaultIndex)
        {
            List<string> values = new List<string>();
            OptionsDefaultIndex = 0;
            switch (propName)
            {
                case "Protocol":
                    values.Add("ModbusRtu");
                    values.Add("ModbusAscii");
                    values.Add("ModbusTcp");
                    values.Add("S7Net");
                    values.Add("FinsTcp");
                    values.Add("MC3E");
                    break;
                case "PortName":
                    values = new List<string>(SerialPort.GetPortNames());
                    break;
                case "BaudRate":
                    values.Add("2400");
                    values.Add("4800");
                    values.Add("9600");
                    values.Add("19200");
                    values.Add("38400");
                    values.Add("57600");
                    values.Add("115200");

                    OptionsDefaultIndex = 2;
                    break;
                case "DataBit":
                    values.Add("5");
                    values.Add("7");
                    values.Add("8");

                    OptionsDefaultIndex = 2;
                    break;
                case "Parity":
                    values = new List<string>(Enum.GetNames<Parity>());
                    break;
                case "StopBit":
                    values = new List<string>(Enum.GetNames<StopBits>());

                    OptionsDefaultIndex = 1;
                    break;
                default: break;
            }

            return values;
        }

    }



}
