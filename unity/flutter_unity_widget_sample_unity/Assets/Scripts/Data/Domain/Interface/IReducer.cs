namespace FlutterUnityWidgetSample.Data.Domain.Interface
{
    public interface IReducer<TState, in TAction>
    {
        TState Reduce(TState state, TAction action);
    }
}