using System.Threading.Tasks;
using LeanCloud;

namespace csharp
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            AVClient.Initialize("r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz", "PT4FpSvABfO0wKCD4WYA0wdK");

            AVObject football = new AVObject("Sport");
            football["totalTime"] = 90;
            football["name"] = "Football";
            Task saveTask = football.SaveAsync();
            saveTask.Wait();
        }
    }
}
