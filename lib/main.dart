import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/mobileScreenLayout.dart';
import 'package:instagramclone/responsive/responsive_layout.dart';
import 'package:instagramclone/responsive/webScreenLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aavash Intagram ',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: ResPonsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ),
      ),
    );
  }
}
