using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Music.Utils.Global
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

        
    }
}
