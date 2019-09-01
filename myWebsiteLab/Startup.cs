using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(myWebsiteLab.Startup))]
namespace myWebsiteLab
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
