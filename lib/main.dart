import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_manager/db/db_helper.dart';
//import 'package:task_manager/services/notification_services.dart';
import 'package:task_manager/services/theme_services.dart';
import 'package:task_manager/ui/home_page.dart';
import 'package:task_manager/ui/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // NotificationService().initNotification();
  await DBHelper.initDb();
  await GetStorage.init();
  await AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(channelGroupKey: "basic_channel_group", channelKey: "basic_channel", channelName: "Basic Notification", channelDescription: "Basic Notification Channel",)
    ],
    channelGroups: [
      NotificationChannelGroup(channelGroupKey: "basic_channel_group", channelGroupName: "Basic Group")
    ]
  );
  bool isAllowedToSendNotifications = await AwesomeNotifications().isNotificationAllowed();
if (!isAllowedToSendNotifications){
  AwesomeNotifications().requestPermissionToSendNotifications();
}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      
      home: HomePage(),
    );
  }
}