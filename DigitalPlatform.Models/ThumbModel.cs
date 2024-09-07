using GalaSoft.MvvmLight.Command;
using System.Windows;

namespace DigitaPlatform.Models;

public class ThumbModel
{
    public string Header { get; set; }
    public List<ThumbItemModel> Children { get; set; } = new List<ThumbItemModel>();
}

public class ThumbItemModel
{
    public string Icon { get; set; }
    public string TargetType { get; set; }
    public string Header { get; set; }
    public int Width { get; set; }
    public int Height { get; set; }

    public RelayCommand<object> ThumbCommand { get; set; }

    public ThumbItemModel()
    {
        ThumbCommand = new RelayCommand<object>(DoThunmCommand);
    }
    private void DoThunmCommand(object obj)
    {
        DragDrop.DoDragDrop(obj as DependencyObject, this, DragDropEffects.Copy);
    }
}