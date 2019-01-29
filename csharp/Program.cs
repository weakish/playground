using System;
using System.Threading.Tasks;

namespace csharp
{
    public static class Program
    {
        public static async Task Main(string[] args)
        {
            await Task.Run(() => Console.WriteLine("Hello World!"));
        }
    }
}
