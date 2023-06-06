using Music.UI;
using MusicApp.Shell.ViewModels;
using MusicApp.Shell.Views;
using MusicApp.Views;
using Prism.DryIoc;
using Prism.Ioc;
using Prism.Modularity;
using System.Windows;

namespace MusicApp
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : PrismApplication
    {
        protected override System.Windows.Window CreateShell()
        {

            return Container.Resolve<MainView>();
        }


        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);  
        }
        protected override void InitializeShell(System.Windows.Window shell)
        {
            if (Container.Resolve<LoginView>().ShowDialog() == false)
            {
                Application.Current?.Shutdown();
            }
            else
            {
                base.InitializeShell(shell);
            }

        }
        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            //注册对话框
            ///  containerRegistry.RegisterDialog<MyDialogView>();
            containerRegistry.RegisterDialog<MusicView, MusicViewModel>("Music");//自定义名字
            containerRegistry.RegisterForNavigation<FooterView>();  //帮助窗口
            containerRegistry.RegisterForNavigation<HomeView>("Home");  //别名
                                                                        //注册导航

            containerRegistry.RegisterForNavigation<SetView>();  //设置窗口
            containerRegistry.RegisterForNavigation<MyCollectView>();  //收藏窗口
            containerRegistry.RegisterForNavigation<SelectView>();  //搜索窗口

        }


        //新建类库，通过模块化传入用户控件
        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            //注册模块就行
            
            moduleCatalog.AddModule<UIModule>();
            base.ConfigureModuleCatalog(moduleCatalog);
        }
    }
}