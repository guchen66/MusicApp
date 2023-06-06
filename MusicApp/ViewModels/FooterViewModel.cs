using Music.UI.Models;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using Prism.Services.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicApp.ViewModels
{
    public class FooterViewModel : BindableBase, INavigationAware
    {
        IRegionNavigationJournal _navigationJournal;//导航日志，上一页，下一页
        IRegionManager _regionManager;//区域管理
        IDialogService _dialogService;
        IEventAggregator _eventAggregator;
        private FooterContext _context;

        public FooterViewModel(IDialogService dialogService, IRegionManager regionManager, IEventAggregator eventAggregator, IRegionNavigationJournal navigationJournal)
        {
            _dialogService = dialogService;
            _regionManager = regionManager;
            _eventAggregator = eventAggregator;
            _navigationJournal = navigationJournal;


        }
        public FooterContext Context
        {
            get { return _context; }
            set { SetProperty(ref _context, value); }
        }

        public bool KeepAlive => false;


        public void OnNavigatedTo(NavigationContext navigationContext)
        {



        }
        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
        }
    }
}
