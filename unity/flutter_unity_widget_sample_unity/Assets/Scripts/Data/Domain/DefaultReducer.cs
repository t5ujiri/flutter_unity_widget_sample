using System;
using FlutterUnityWidgetSample.Data.Domain.Interface;

namespace FlutterUnityWidgetSample.Data.Domain
{
    public class DefaultReducer : IReducer<PAppState, PAppAction>
    {
        public PAppState Reduce(PAppState state, PAppAction action)
        {
            switch (action.ActionCase)
            {
                case PAppAction.ActionOneofCase.None:
                {
                    return state;
                }
                case PAppAction.ActionOneofCase.Reset:
                {
                    var clone = state.Clone();
                    clone.Count = 0;
                    return clone;
                }
                case PAppAction.ActionOneofCase.Jump:
                {
                    var clone = state.Clone();
                    clone.Count++;
                    return clone;
                }
                case PAppAction.ActionOneofCase.SetCanJump:
                {
                    var clone = state.Clone();
                    clone.CanJump = action.SetCanJump.CanJump;
                    return clone;
                }
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
    }
}