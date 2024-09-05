import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SubscriptionApi
void main() {
  final instance = Openapi().getSubscriptionApi();

  group(SubscriptionApi, () {
    //Future notificationsDeviceIdDelete(String deviceId) async
    test('test notificationsDeviceIdDelete', () async {
      // TODO
    });

    //Future notificationsDeviceIdPut(String deviceId, { SubscriptionModel subscriptionModel }) async
    test('test notificationsDeviceIdPut', () async {
      // TODO
    });

    //Future subscriptionDeviceIdDelete(String deviceId) async
    test('test subscriptionDeviceIdDelete', () async {
      // TODO
    });

    //Future subscriptionDeviceIdPut(String deviceId, { SubscriptionModel subscriptionModel }) async
    test('test subscriptionDeviceIdPut', () async {
      // TODO
    });

  });
}
