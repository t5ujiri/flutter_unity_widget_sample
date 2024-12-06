using System;
using FlutterUnityWidgetSample.Data.Domain;
using MessagePipe;
using UniRx;
using VContainer.Unity;

// ReSharper disable once ClassNeverInstantiated.Global

namespace FlutterUnityWidgetSample.Presenter
{
    // ReSharper disable once ClassNeverInstantiated.Global
    public class AppPresenter : IStartable, IDisposable
    {
        private readonly ISubscriber<PAppAction> _actionSubscriber;
        private readonly CompositeDisposable _compositeDisposable = new();
        private readonly DefaultStore _defaultStore;
        private readonly DefaultMiddleware _defaultMiddleware;
        private readonly CharacterView _characterView;

        public AppPresenter(ISubscriber<PAppAction> actionSubscriber,
            DefaultStore defaultStore, DefaultMiddleware defaultMiddleware, CharacterView characterView)
        {
            _actionSubscriber = actionSubscriber;
            _defaultStore = defaultStore;
            _defaultMiddleware = defaultMiddleware;
            _characterView = characterView;
        }

        public void Start()
        {
            // middlewareを登録
            _defaultStore.Middlewares.Add(_defaultMiddleware);

            // flutterやPresenter層・Middlewareから発行されたActionをStoreにDispatchする
            _actionSubscriber
                .Subscribe(action => { _defaultStore.Dispatch(action); })
                .AddTo(_compositeDisposable);

            // Stateの変化を監視し、flutter側に通知する
            _defaultStore.State.Subscribe(FlutterUnityConnector.SendAppState)
                .AddTo(_compositeDisposable);

            // キャラクターの設置状況の変化を監視してアクションを発行
            _characterView.isGrounded.Subscribe(b =>
            {
                _defaultStore.Dispatch(new PAppAction
                {
                    SetCanJump = new PAppAction.Types.SetCanJump()
                    {
                        CanJump = b
                    }
                });
            }).AddTo(_compositeDisposable);
        }

        public void Dispose()
        {
            _compositeDisposable?.Dispose();
        }
    }
}