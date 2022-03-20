import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          elevation: 0,
        ),
        backgroundColor: Colors.grey,
        body: const Center(child: Text("Push Notification")));
  }

  Future<void> initPlatform() async {
    await OneSignal.shared.setAppId("b2770755-916d-4408-9e7d-544f8624e48f");
    await OneSignal.shared
        .getDeviceState()
        .then((value) => {print((value)!.userId)});
  }
}
