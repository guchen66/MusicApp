using MaterialDesignColors;
using Music.Utils.Common;
using MusicApp.Global;
using MusicApp.Views;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using Prism.Services.Dialogs;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace MusicApp.ViewModels
{
    public class HeaderViewModel : BindableBase
    {

        IRegionNavigationJournal _navigationJournal;//导航日志，上一页，下一页
        IRegionManager _regionManager;//区域管理
        IDialogService _dialogService;
        IEventAggregator _eventAggregator;

       
        public HeaderViewModel(IRegionNavigationJournal navigationJournal,IDialogService dialogService, IRegionManager regionManager, IEventAggregator eventAggregator)
        {
            _navigationJournal = navigationJournal;
            _dialogService = dialogService;
            _regionManager = regionManager;
            _eventAggregator = eventAggregator;
          
        }

        private string searchText;
        public string SearchText
        {
            get { return searchText; }
            set { SetProperty(ref searchText, value); }
        }


        #region  关闭按钮
        private DelegateCommand<object> _closeCmd;
        public DelegateCommand<object> CloseCommand =>
            _closeCmd ?? (_closeCmd = new DelegateCommand<object>(DoCloseCmd));

        public void DoCloseCmd(object obj)
        {
            Application.Current.Shutdown();

           // Application.Current.MainWindow.Close(); //关闭主窗口，报错

        }

        #endregion

       

        #region  前进后退
        private DelegateCommand _goBackCommand;
        public DelegateCommand GoBackCommand =>
            _goBackCommand ?? (_goBackCommand = new DelegateCommand(DoGoBack));


        private void DoGoBack()
        {
            _eventAggregator.GetEvent<GoBackEvent>().Publish();
           
        }

        private DelegateCommand _forWardCommand;
        public DelegateCommand ForWardCommand =>
            _forWardCommand ?? (_forWardCommand = new DelegateCommand(DoForWard));

        private void DoForWard()
        {
            // _journal.GoForward();
            _eventAggregator.GetEvent<ForWardEvent>().Publish();
        }




        #endregion

        #region  搜索歌曲按钮

        
        private DelegateCommand<object> _searchCmd;
        public DelegateCommand<object> SearchCommand =>
            _searchCmd ?? (_searchCmd = new DelegateCommand<object>(DoSearchCmd));

        public void DoSearchCmd(object obj)
        {
            

        }


     
       
        #endregion


        #region  一键换肤
        private DelegateCommand<object> _skinCmd;
        public DelegateCommand<object> SkinCommand =>
            _skinCmd ?? (_skinCmd = new DelegateCommand<object>(DoSkinCmd));

        public void DoSkinCmd(object obj)
        {


        }
        #endregion


        #region  退出主界面，重新登录
        private DelegateCommand _backLoginCmd;
        public DelegateCommand BackLoginCmd => _backLoginCmd
            ?? (_backLoginCmd = new DelegateCommand(async () => await ExecuteBackLoginAsync()));

        private async Task ExecuteBackLoginAsync()
        {
            // 关闭当前窗口 
            Process.Start(Process.GetCurrentProcess().ProcessName);
            Application.Current.Shutdown();

            await Task.Run(() =>
            {
                // 关闭当前窗口
                Task.Delay(TimeSpan.FromSeconds(1));
                // 在STA线程上打开登录窗口
                Application.Current.Dispatcher.Invoke(() =>
                {
                    LoginView loginWindow = new LoginView();
                    loginWindow.Show();
                }, System.Windows.Threading.DispatcherPriority.Normal, null);
                
            });
        }
        #endregion


        #region 鼠标左键移动

        private DelegateCommand<string> _dragMoveCommand;
        public DelegateCommand<string> DragMoveCommand =>
            _dragMoveCommand ?? (_dragMoveCommand = new DelegateCommand<string>(ExecuteDragMoveCommand, CanExecuteDragMoveCommand));

        private void ExecuteDragMoveCommand(string parameter)
        {
            Application.Current.MainWindow.DragMove();
           
        }

        private bool CanExecuteDragMoveCommand(string parameter)
        {
            return true;
        }

        private void HandleHeaderViewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            // 检查是否点击了关闭程序重新登录的按钮
            var closeButton = ((Control)sender)?.Template?.FindName("BackLoginName", (Control)sender) as Button;
            if (closeButton != null && closeButton.IsPressed)
            {
                return;
            }

            // 执行拖动命令
            if (e.ButtonState == MouseButtonState.Pressed)
            {
                DragMoveCommand.Execute(null);
            }
        }
        #endregion
    }
}
