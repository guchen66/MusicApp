using DryIoc;
using MusicApp.Global;
using MusicApp.Views;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using SqlSugar;
using System;
using System.Buffers.Text;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MusicApp.ViewModels
{
    public class LoginViewModel : BindableBase
    {
        public AppData AppData { get; set; } = AppData.Instance;
        /* public SimpleClient<User> sdb = new SimpleClient<User>(BaseDB.GetClient());
         public LoginViewModel()
         {
             this.appData.CurrentUser.Name = "admin";
             this.appData.CurrentUser.Password = "0";
         }
 */
        IRegionManager _regionManager;
        IContainer _container;
        public LoginViewModel(IRegionManager regionManager, IContainer container)
        {
            this.AppData.CurrentUser.UserName = "admin";
            this.AppData.CurrentUser.Password = "123";
            _regionManager = regionManager;
            _container = container;
        }
        /// <summary>
        /// 带参登录
        /// </summary>
        private DelegateCommand<Window> _loginCommand;
        public DelegateCommand<Window> LoginCommand =>
            _loginCommand ?? (_loginCommand = new DelegateCommand<Window>(DoLogin));

        private void DoLogin(Window win)
        {
           
                win.DialogResult = true;
                win.Close();
               
            
        }


        /// <summary>
        /// 取消
        /// </summary>
        private DelegateCommand _cancelCommand;
        public DelegateCommand CancelCommand =>
            _cancelCommand ?? (_cancelCommand = new DelegateCommand(DoCancel));

        private void DoCancel()
        {
            App.Current.Shutdown();
            //Application.Current.Shutdown();
        }
    }
}
