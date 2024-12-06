using System.Collections.Generic;
using FlutterUnityWidgetSample.Data.Domain.Interface;
using UniRx;

namespace FlutterUnityWidgetSample.Data.Domain
{
    public class DefaultStore : IStore<PAppState, PAppAction>
    {
        public IReadOnlyReactiveProperty<PAppState> State { get; }
        public List<IMiddleware<IStore<PAppState, PAppAction>, PAppAction>> Middlewares { get; } = new();
        public IReducer<PAppState, PAppAction> Reducer { get; }

        private readonly ReactiveProperty<PAppState> _state;

        public DefaultStore(PAppState initialState, IReducer<PAppState, PAppAction> reducer)
        {
            Reducer = reducer;
            _state = new ReactiveProperty<PAppState>(initialState);
            State = _state;
        }

        public void Dispatch(PAppAction action)
        {
            ExecuteMiddlewares(action, 0);
        }

        private void ExecuteMiddlewares(PAppAction action, int currentIndex)
        {
            if (currentIndex < Middlewares.Count)
            {
                var nextMiddleware = Middlewares[currentIndex];
                nextMiddleware.Invoke(this, action, (next) => ExecuteMiddlewares(next, currentIndex + 1));
            }
            else
            {
                // 全てのミドルウェアを通過したら、最終的にReducerを呼び出す
                _state.SetValueAndForceNotify(Reducer.Reduce(_state.Value, action));
            }
        }
    }
}