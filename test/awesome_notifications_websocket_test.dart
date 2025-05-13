import 'package:flutter_test/flutter_test.dart';
import 'package:awesome_notifications_websocket/awesome_notifications_websocket.dart';
import 'package:awesome_notifications_websocket/awesome_notifications_websocket_platform_interface.dart';
import 'package:awesome_notifications_websocket/awesome_notifications_websocket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAwesomeNotificationsWebsocketPlatform
    with MockPlatformInterfaceMixin
    implements AwesomeNotificationsWebsocketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AwesomeNotificationsWebsocketPlatform initialPlatform = AwesomeNotificationsWebsocketPlatform.instance;

  test('$MethodChannelAwesomeNotificationsWebsocket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAwesomeNotificationsWebsocket>());
  });

  test('getPlatformVersion', () async {
    AwesomeNotificationsWebsocket awesomeNotificationsWebsocketPlugin = AwesomeNotificationsWebsocket();
    MockAwesomeNotificationsWebsocketPlatform fakePlatform = MockAwesomeNotificationsWebsocketPlatform();
    AwesomeNotificationsWebsocketPlatform.instance = fakePlatform;

    expect(await awesomeNotificationsWebsocketPlugin.getPlatformVersion(), '42');
  });
}
