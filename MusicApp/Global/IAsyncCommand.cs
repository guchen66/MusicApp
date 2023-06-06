using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MusicApp.Global
{
    public interface IAsyncCommand : ICommand
    {
        Task ExecuteAsync(object parameter);
    }

    public interface IAsyncCommand<T> : ICommand
    {
        Task ExecuteAsync(T parameter);
    }

    public class AsyncDelegateCommand : ICommand
    {
        private readonly Func<Task> _asyncExecute;
        private readonly Func<bool> _canExecute;
        private bool _isExecuting;

        public event EventHandler CanExecuteChanged;

        public AsyncDelegateCommand(Func<Task> asyncExecute) : this(asyncExecute, null)
        {
        }

        public AsyncDelegateCommand(Func<Task> asyncExecute, Func<bool> canExecute)
        {
            _asyncExecute = asyncExecute;
            _canExecute = canExecute;
        }

        public bool CanExecute(object parameter)
        {
            return !_isExecuting && (_canExecute?.Invoke() ?? true);
        }

        public async void Execute(object parameter)
        {
            await ExecuteAsync();
        }

        public async Task ExecuteAsync()
        {
            if (CanExecute(null))
            {
                try
                {
                    _isExecuting = true;
                    await _asyncExecute?.Invoke();
                }
                finally
                {
                    _isExecuting = false;
                }
            }
        }

        protected virtual void OnCanExecuteChanged()
        {
            CanExecuteChanged?.Invoke(this, EventArgs.Empty);
        }

        public void RaiseCanExecuteChanged()
        {
            OnCanExecuteChanged();
        }
    }
}
