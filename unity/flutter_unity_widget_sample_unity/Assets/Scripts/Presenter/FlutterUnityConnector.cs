using System;
using FlutterUnityIntegration;
using Google.Protobuf;
using MessagePipe;
using UnityEngine;

namespace FlutterUnityWidgetSample.Presenter
{
    public class FlutterUnityConnector : MonoBehaviour
    {
        private IPublisher<PAppAction> _appActionPublisher;

        private void Awake()
        {
            _appActionPublisher = GlobalMessagePipe.GetPublisher<PAppAction>();
        }

        private void OnMessage(string message)
        {
            var action = new PAppAction();
            action.MergeFrom(Convert.FromBase64String(message));
            Debug.Log(action.ToString());
            _appActionPublisher.Publish(action);
        }

        public static void SendAppState(PAppState state)
        {
            UnityMessageManager.Instance.SendMessageToFlutter(Convert.ToBase64String(state.ToByteArray()));
        }
    }
}