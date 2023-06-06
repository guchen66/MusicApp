using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicApp.ViewModels
{
    /// <summary>
    /// OnNavigatedTo: 导航完成前, 此处可以传递过来的参数以及是否允许导航等动作的控制。
    ///IsNavigationTarget: True则重用该View实例，Flase则每一次导航到该页面都会实例化一次
    ///OnNavigatedFrom: 当导航离开当前页时, 类似打开A, 再打开B时, 该方法被触发。
    /// </summary>
    public class HomeViewModel : INavigationAware//, IConfirmNavigationRequest
    {
        public void ConfirmNavigationRequest(NavigationContext navigationContext, Action<bool> continuationCallback)
        {
            /*var result = false;
            if (MessageBox.Show("是否需要导航到LoginMainContent页面?", "Naviagte?", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                result = true;
            }
            continuationCallback(result);*/
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
            // MessageBox.Show("退出了Home");
        }

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            // MessageBox.Show("从Home导航到其他");
        }
    }
}
