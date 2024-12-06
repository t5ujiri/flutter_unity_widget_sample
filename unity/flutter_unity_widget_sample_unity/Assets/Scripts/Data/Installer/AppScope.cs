using FlutterUnityWidgetSample.Data.Domain;
using FlutterUnityWidgetSample.Presenter;
using MessagePipe;
using VContainer;
using VContainer.Unity;

namespace FlutterUnityWidgetSample.Data.Installer
{
    public class AppScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            var option = builder.RegisterMessagePipe();
            builder.RegisterBuildCallback(c => GlobalMessagePipe.SetProvider(c.AsServiceProvider()));
            builder.RegisterMessageBroker<PAppState>(option);
            builder.RegisterMessageBroker<PAppAction>(option);

            builder.RegisterComponentInHierarchy<FlutterUnityConnector>();

            builder.RegisterInstance(new DefaultStore(new PAppState(), new DefaultReducer()));
            builder.Register<DefaultMiddleware>(Lifetime.Scoped);

            builder.RegisterEntryPoint<AppPresenter>(Lifetime.Scoped);

            builder.RegisterComponentInHierarchy<CharacterView>();
        }
    }
}