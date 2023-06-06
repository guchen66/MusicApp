using DryIoc;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicApp.Shell.ViewModels
{
    public class ContentViewModel : BindableBase, IConfirmNavigationRequest
    {
        private IRegionNavigationJournal _navigationJournal;//区域导航
        public void ConfirmNavigationRequest(NavigationContext navigationContext, Action<bool> continuationCallback)
        {

        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            _navigationJournal = navigationContext.NavigationService.Journal;
            // _navigationJournal = Context.NavigationService.Journal;
            var Id = navigationContext.Parameters["loginId"] as string;
            
        }
    }
}

