using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigitaPlatform.Common
{
    public class ActionManager
    {
        private ActionManager() { }
        
        //key对应委托
        static Dictionary<string, Delegate> actionMap = new Dictionary<string, Delegate>();

        //注册
        public static void Register<T>(string key, Delegate d)
        {
            if (!actionMap.ContainsKey(key))
                actionMap.Add(key, d);
        }

        // 单执行
        public static void Execute<T>(string key, T data)
        {
            if (actionMap.ContainsKey(key))
                //DynamicInvoke 允许您在运行时动态地调用方法，而不必知道方法的确切类型。
                //这对于编写灵活的代码非常有用，尤其是在需要处理多种不同类型的对象时。
                actionMap[key].DynamicInvoke(data);
        }
        // 执行并返回状态
        public static bool ExecuteAndResult<T>(string key, T data)
        {
            if (actionMap.ContainsKey(key))
            {
                var action = (actionMap[key] as Func<T, bool>);
                if (action == null)
                    return false;

                return action.Invoke(data);
            }
            return false;
        }
    }
}
