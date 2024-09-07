using DigitaPlatform.Entities;
using DigitaPlatForm.IDataAccess;
using System.Data;

namespace DigitaPlatForm.IDataAccess
{
    public interface ILocalDataAccess
    {
        DataTable Login(string username, string password);
        int SaveDevice(List<DeviceEntity> devices);
        List<DeviceEntity> GetDevices();


        List<PropEntity> GetPropertyOption();
        List<ThumbEntity> GetThumbList();
    }

}
