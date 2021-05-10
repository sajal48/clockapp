import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class AlarmScreen extends StatefulWidget {
  static const TextStyle clockText =
      TextStyle(fontSize: 50, color: Colors.blue);
  static const TextStyle dateText = TextStyle(fontSize: 20, color: Colors.pink);
  const AlarmScreen({
    Key key,
  }) : super(key: key);

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  @override
  void initState() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('');
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var window = MediaQuery.of(context).size;
    return GlassContainer.clearGlass(
        height: window.height / 1.8,
        width: window.width / 1.5,
        margin: EdgeInsets.symmetric(horizontal: 5),
        borderColor: Colors.white24,
        elevation: 10.0,
        blur: 3,
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12,
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Alarm",
              style: AlarmScreen.dateText,
            ),
          ),
        ));
  }
}
