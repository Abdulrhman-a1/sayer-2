import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static final notifications = FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const DarwinInitializationSettings iosInit = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initSettings = InitializationSettings(
      iOS: iosInit,
    );

    await notifications.initialize(initSettings);
  }

  static Future<void> showNotification(String title, String body) async {
    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

    const NotificationDetails platformDetails = NotificationDetails(
      iOS: iosDetails,
    );

    await notifications.show(0, title, body, platformDetails);
  }
}
