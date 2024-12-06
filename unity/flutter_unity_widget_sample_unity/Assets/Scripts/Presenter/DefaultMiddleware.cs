using System;
using FlutterUnityWidgetSample.Data.Domain.Interface;

namespace FlutterUnityWidgetSample.Presenter
{
    // ReSharper disable once ClassNeverInstantiated.Global
    public class DefaultMiddleware : IMiddleware<IStore<PAppState, PAppAction>, PAppAction>
    {
        private readonly CharacterView _characterView;

        public DefaultMiddleware(CharacterView characterView)
        {
            _characterView = characterView;
        }

        public void Invoke(IStore<PAppState, PAppAction> store, PAppAction action, Action<PAppAction> next)
        {
            switch (action.ActionCase)
            {
                case PAppAction.ActionOneofCase.None:
                case PAppAction.ActionOneofCase.SetCanJump:
                case PAppAction.ActionOneofCase.Reset:
                {
                    break;
                }
                case PAppAction.ActionOneofCase.Jump:
                {
                    if (!store.State.Value.CanJump) return;
                    _characterView.Jump();

                    break;
                }
                default:
                    throw new ArgumentOutOfRangeException();
            }

            next(action);
        }
    }
}