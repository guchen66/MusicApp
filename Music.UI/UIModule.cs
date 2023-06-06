using Music.UI.Views;
using Prism.Ioc;
using Prism.Modularity;
using Prism.Regions;
using System.Windows;

namespace Music.UI
{
    public class UIModule : IModule
    {
        public void OnInitialized(IContainerProvider containerProvider)
        {
            
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            //注册导航
            
           // containerRegistry.RegisterForNavigation<SetView>();  //设置窗口
            containerRegistry.RegisterForNavigation<CollectView>();  //收藏窗口
            containerRegistry.RegisterForNavigation<DownLoadView>();  //下载窗口
            containerRegistry.RegisterForNavigation<HelpView>();  //帮助窗口
           
        }
        protected void OnStartup(StartupEventArgs e)
        {
           
        }

    }
}