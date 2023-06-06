using Music.UI.Models;
using Music.UI.ViewModels;
using Music.UI.Views;
using Music.Utils.Common;
using MusicApp.Models;
using MusicApp.Shell.Views;
using MusicApp.Views;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using Prism.Services.Dialogs;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace MusicApp.ViewModels
{
    public class MainViewModel : BindableBase
    {
        private string _title = "Prism Application";
        public string Title
        {
            get { return _title; }
            set { SetProperty(ref _title, value); }
        }

        IRegionNavigationJournal _navigationJournal;//导航日志，上一页，下一页
        IRegionManager _regionManager;//区域管理
        IDialogService _dialogService;
        IEventAggregator _eventAggregator;
        public MainViewModel(IRegionNavigationJournal navigationJournal,IDialogService dialogService, IRegionManager regionManager, IEventAggregator eventAggregator)
        {
            _navigationJournal = navigationJournal;
           // _navigationJournal = regionManager.Regions["ContentRegion"].NavigationService.Journal;
            _dialogService = dialogService;
            _regionManager = regionManager;
            _eventAggregator = eventAggregator;
            regionManager.RegisterViewWithRegion(RegionNames.ContentRegion, typeof(HomeView));
            regionManager.RegisterViewWithRegion(RegionNames.HeaderRegion, typeof(HeaderView));
            regionManager.RegisterViewWithRegion(RegionNames.FooterRegion, typeof(FooterView));

            _eventAggregator.GetEvent<GoBackEvent>().Subscribe(GoBackHandlerEvent);
            _eventAggregator.GetEvent<ForWardEvent>().Subscribe(ForWardHandlerEvent);

          //  var footerViewModel = regionManager.Regions["FooterRegion"].ActiveViews.FirstOrDefault() as FooterViewModel;
            
        }

        private ObservableCollection<CustomList> showList = new ObservableCollection<CustomList>();//已经封装好的集合列表，提供实时刷新，当做有通知的List<Student>
        public ObservableCollection<CustomList> ShowList//和前台要对应
        {
            get{ return showList; }
            set{ showList = value;RaisePropertyChanged();}//两种属性通知都可
        }
        #region 打开弹框
        //
        private DelegateCommand<string> _musicCmd;
        public DelegateCommand<string> MusicCmd =>
            _musicCmd ?? (_musicCmd = new DelegateCommand<string>(DoMusicCommand));

        void DoMusicCommand(string parameter)
        {
            DialogParameters keyValuePairs = new DialogParameters();
            keyValuePairs.Add("value", "Test1");
            //_dialogService.ShowDialog("MsgDialog");//注册之后最简单的打开方式
            _dialogService.ShowDialog("Music", keyValuePairs, arg =>
            {
                if (arg.Result == ButtonResult.OK)
                {
                    var value = arg.Parameters.GetValue<string>("value");
                    MessageBox.Show($"用户输入了：{value}");
                }
                else
                {
                    MessageBox.Show("用户取消了弹窗");
                }
            });

        }
        #endregion

        #region 打开主页
        private DelegateCommand _openHomeCmd;
        public DelegateCommand OpenHomeCmd =>
            _openHomeCmd ?? (_openHomeCmd = new DelegateCommand(DoHomeCmd));

        public void DoHomeCmd()
        {
            //这种设置了导航
            /* _regionManager.RequestNavigate("ContentRegion", "Home", arg =>
             {
                 _navigationJournal = arg.Context.NavigationService.Journal;
             });*/
            Navigate("Home");
           // ClearNavigationJournal();
        }
        #endregion

        #region  打开设置
        private DelegateCommand _openSetCmd;
        public DelegateCommand OpenSetCmd =>
            _openSetCmd ?? (_openSetCmd = new DelegateCommand(DoSetCmd));

        public void DoSetCmd()
        {
            Navigate("SetView");
           
        }
        #endregion

        #region  打开下载
        private DelegateCommand _openDownLoadCmd;
        public DelegateCommand OpenDownLoadCmd =>
            _openDownLoadCmd ?? (_openDownLoadCmd = new DelegateCommand(DoDownLoadCmd));

        public void DoDownLoadCmd()
        {
            Navigate("DownLoadView");
           
        }
        #endregion

        #region  打开收藏
        private DelegateCommand _openCollectionCmd;
        public DelegateCommand OpenCollectionCmd =>
            _openCollectionCmd ?? (_openCollectionCmd = new DelegateCommand(DoCollectionCmd));

        public void DoCollectionCmd()
        {
            Navigate("MyCollectView");
          
        }
        #endregion

        #region  打开帮助  
        private DelegateCommand _openHelpCmd;
        public DelegateCommand OpenHelpCmd =>
            _openHelpCmd ?? (_openHelpCmd = new DelegateCommand(DoHelpCmd));

        public void DoHelpCmd()
        {
            Navigate("HelpView");
         
        }
        #endregion

       






        #region  前进后退 通过事件订阅传到HeaderViewModel

        private DelegateCommand _goBackCommand;
        public DelegateCommand GoBackCommand =>
            _goBackCommand ?? (_goBackCommand = new DelegateCommand(GoBackHandlerEvent));
        public void GoBackHandlerEvent()
        {
            
            if (_navigationJournal != null && _navigationJournal.CanGoBack)
            {
                _regionManager.Regions["ContentRegion"].NavigationService.Journal.GoBack();
             //   _navigationJournal.GoBack();
            }

        }

        private DelegateCommand _forWardCommand;
        public DelegateCommand ForWardCommand =>
            _forWardCommand ?? (_forWardCommand = new DelegateCommand(ForWardHandlerEvent));

        
        public void ForWardHandlerEvent()
        {
            _navigationJournal?.GoForward();
        }

        private void ClearNavigationJournal()
        {
            if (_navigationJournal != null)
            {
                _navigationJournal.Clear();
            }
        }
        #endregion

        #region 切换视图
        private void Navigate(string navigatePath)
        {
            if (navigatePath != null)
                _regionManager.RequestNavigate(RegionNames.ContentRegion, navigatePath, arg =>
                {
                    _navigationJournal = arg.Context.NavigationService.Journal;
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


        #endregion


        #region FooterView

       

        private void SetRegionContext()
        {
            var context = new FooterContext { Id = 1, Name = "Value" };
            _regionManager.Regions["FooterRegion"].Context = context;
            
        }
        #endregion
    }
}
