using UniRx;
using UnityEngine;

namespace FlutterUnityWidgetSample.Presenter
{
    public class CharacterView : MonoBehaviour
    {
        private Rigidbody _rigidbody;
        public new Collider collider;
        private const string GroundTag = "Ground";

        public BoolReactiveProperty isGrounded = new(true);

        private void Awake()
        {
            _rigidbody = GetComponent<Rigidbody>();
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag(GroundTag))
            {
                isGrounded.Value = true;
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag(GroundTag))
            {
                isGrounded.Value = false;
            }
        }

        public void Jump()
        {
            _rigidbody.AddForce(Vector3.up * 10, ForceMode.Impulse);
        }
    }
}