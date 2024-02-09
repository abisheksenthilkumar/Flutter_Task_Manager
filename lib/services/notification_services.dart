import 'package:awesome_notifications/awesome_notifications.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//import 'package:get/get_connect/http/src/request/request.dart';

class NotificationController{
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
    ReceivedNotification receivedNotification) async {

    }

  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
    ReceivedNotification receivedNotification) async {

    }
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
    ReceivedNotification receivedAction) async {

    }
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
    ReceivedNotification receivedAction) async {

    }
}

//another method
// class NotificationService {
//   final FlutterLocalNotificationsPlugin notificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> initNotification() async{
//     AndroidInitializationSettings initializationSettingsAndroid =
//         const AndroidInitializationSettings('appicon');

//     var initializationSettingsIOS = DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//       onDidReceiveLocalNotification:
//                   (int id, String? title, String? body, String? payload) async {});

//     var initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     await notificationsPlugin.initialize(initializationSettings,onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async{});
    
//   }

//     notificationDetails() {
//       return const NotificationDetails(
//         android: AndroidNotificationDetails('channelId', 'channelName',importance: Importance.max),
//         iOS: DarwinNotificationDetails());
      
//     }

//     Future showNotification(
//       {int id = 0, String? title, String? body, String? payload}) async {
//         return notificationsPlugin.show(id, title, body, await notificationDetails());
//       }

//     Future scheduleNotification(
//       {int id = 0,
//       String? title,
//       String? body,
//       String? payLoad,
//       required DateTime scheduleNotificationDateTime}) async {
//     return notificationsPlugin.zonedSchedule(id, title, body, tz.TZDateTime.from(scheduleNotificationDateTime,tz.local,),
//       await notificationDetails(),
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime);
//       }
//       }
    
