import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'awesome_notifications_websocket_platform_interface.dart';

/// An implementation of [AwesomeNotificationsWebsocketPlatform] that uses method channels.
class MethodChannelAwesomeNotificationsWebsocket extends AwesomeNotificationsWebsocketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('awesome_notifications_websocket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
