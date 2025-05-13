
import 'awesome_notifications_websocket_platform_interface.dart';

class AwesomeNotificationsWebsocket {
  Future<String?> getPlatformVersion() {
    return AwesomeNotificationsWebsocketPlatform.instance.getPlatformVersion();
  }
}
