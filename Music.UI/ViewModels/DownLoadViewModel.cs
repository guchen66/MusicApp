using Prism.Commands;
using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Music.UI.ViewModels
{
    public class DownLoadViewModel : BindableBase
    {
        private DelegateCommand _moreCmd;
        public DelegateCommand MoreCmd =>
            _moreCmd ?? (_moreCmd = new DelegateCommand(DoMoreCmd));

        void DoMoreCmd()
        {

        }

        private DelegateCommand _playerCmd;
        public DelegateCommand PlayerCmd =>
            _playerCmd ?? (_playerCmd = new DelegateCommand(DoPlayCmd));

        void DoPlayCmd()
        {

        }

        private DelegateCommand _insertCmd;
        public DelegateCommand InsertCmd =>
            _insertCmd ?? (_insertCmd = new DelegateCommand(DoInsertCmd));

        void DoInsertCmd()
        {

        }
    }
}
