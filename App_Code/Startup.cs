using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PartTimeCalc.Startup))]
namespace PartTimeCalc
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
