import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationHelper 
{
  // Nesnemizi oluşturduk
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future initialize() async {
    // Bildirim ikonu belirttik.
    const androidInitialize =
        AndroidInitializationSettings('mipmap/ic_launcher');
    const initializationsSettings =
        InitializationSettings(android: androidInitialize);
    
    // Paketimizi bildirim ikonu belirttikten sonra başlattık.
    
  }

  // Bildirimimizle ilgili tüm ayarları çağırmak üzere burada belirttik.
  static Future _notificationDetails() async => const NotificationDetails(
        android: AndroidNotificationDetails(
          "Teda",
          "tedarik_teklifi",
    
          importance: Importance.max,
        ),
      );

  // Normal bildirim gösterme.
  static Future showNotification({
    int id = 0,
    required String title,
    required String body,
    required String payload, // bildirime extra veri eklemek istersek
  }) async =>
      _notifications.show(id, title, body, await _notificationDetails(),
          payload: payload);
  
  static void _notifyUserAboutRequest() {
    // Yeni bir talep olduğunda bildirim gönder
    NotificationHelper.showNotification(
      id: 1,
      title: 'Yeni Talep',
      body: 'Yeni bir tedarik talebi alındı.',
      payload: 'ekstra_veri_gerekirse',
    );
  }
}