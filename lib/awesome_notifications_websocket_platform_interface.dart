import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'awesome_notifications_websocket_method_channel.dart';

abstract class AwesomeNotificationsWebsocketPlatform extends PlatformInterface {
  /// Constructs a AwesomeNotificationsWebsocketPlatform.
  AwesomeNotificationsWebsocketPlatform() : super(token: _token);

  static final Object _token = Object();

  static AwesomeNotificationsWebsocketPlatform _instance = MethodChannelAwesomeNotificationsWebsocket();

  /// The default instance of [AwesomeNotificationsWebsocketPlatform] to use.
  ///
  /// Defaults to [MethodChannelAwesomeNotificationsWebsocket].
  static AwesomeNotificationsWebsocketPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AwesomeNotificationsWebsocketPlatform] when
  /// they register themselves.
  static set instance(AwesomeNotificationsWebsocketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
