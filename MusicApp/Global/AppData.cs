using MusicData;
using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicApp.Global
{
    public class AppData : BindableBase
    {
        public static AppData Instance = new Lazy<AppData>(() => new AppData()).Value;

        private string systemName;
        public string SystemName
        {
            get { return systemName; }
            set { systemName = value; RaisePropertyChanged(); }
        }

        

        private UserInfo user = new();
        public UserInfo CurrentUser
        {
            get { return user; }
            set { user = value; RaisePropertyChanged(nameof(CurrentUser)); }
        }
    }
}
