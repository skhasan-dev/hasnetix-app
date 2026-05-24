import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        getIt,
        FirebaseCrashlyticsService,
        darwinNotificationCategories,
        NavigationRepository;

class FirebaseMessagingService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    _configNotification();

    try {
      final settings = await FirebaseMessaging.instance.requestPermission();
      log('Notification Permission Status: ${settings.authorizationStatus}');
      await FirebaseMessaging.instance.getAPNSToken();
      // Retrieve Token
      final fcmToken = await FirebaseMessaging.instance.getToken();
      log('FCM Token[FirebaseMessagingService] --> $fcmToken');
      // Terminated State
      FirebaseMessaging.instance.getInitialMessage().then((message) async {
        if (message != null) {
          // final spaceId = message.data['spaceId'];
          // if (spaceId != null) {
          //   await getIt<AppStateProvider>()
          //       .updateNewNotificationCount(spaceId, delta: 1);
          // }
          log('Terminated State: $message');
          unawaited(_handlePushNotificationData(message));
        }
      });

      // Triggered when there's a notification on the Foreground State
      FirebaseMessaging.onMessage.listen((message) async {
        // final spaceId = message.data['spaceId'];
        // if (spaceId != null) {
        //   await getIt<AppStateProvider>()
        //       .updateNewNotificationCount(spaceId, delta: 1);
        // }
        log('Foreground State: ${message.toMap()}');
        unawaited(_showNotification(message));
      });

      // Triggered when clicked on the notification from background state
      FirebaseMessaging.onMessageOpenedApp.listen((message) {
        log('Background State: ${message.toMap()}');
        _handlePushNotificationData(message);
      });
    } catch (exception, stackTrace) {
      getIt<FirebaseCrashlyticsService>().recordError(
        exception,
        stackTrace,
        reason: 'Error encountered in: FirebaseMessagingService.init()',
      );
    }
  }

  void _configNotification() {
    const initializationSettingsAndroid = AndroidInitializationSettings(
      '@drawable/notifications_icons',
    );
    final initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
      notificationCategories: darwinNotificationCategories,
    );

    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }

  Future<void> _showNotification(RemoteMessage message) async {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'wybrid_partner_channel',
      'Wybrid Partner Notifications',
      channelDescription: 'Channel for Wybrid Partner notifications',
    );

    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();

    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      id: message.data['id']?.hashCode ?? 0,
      title: message.notification?.title,
      body: message.notification?.body,
      notificationDetails: platformChannelSpecifics,
      payload: jsonEncode(message.data),
    );
  }

  Future<void> onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {
    final payload = notificationResponse.payload;
    log('onNotificationClick: $payload');
    if (payload != null) {
      unawaited(_handlePushNotificationData(payload));
    }
  }

  Future<void> _handlePushNotificationData(dynamic message) async {
    final navigatorKey = getIt<NavigationRepository>().navigatorKey;
    var notificationData = <String, dynamic>{};

    if (message is RemoteMessage) {
      notificationData = message.data;
    } else if (message is String) {
      notificationData = jsonDecode(message) as Map<String, dynamic>;
    }
    final topic = notificationData['topic'];
    final idFromPushNotification = notificationData['id'] as String?;

    final state = navigatorKey.currentState;
  }
}
