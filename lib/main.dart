import 'package:flutter/material.dart';
import 'package:flutter_valentine_greeting_web/responsive/mobile_screen_layout.dart';
import 'package:flutter_valentine_greeting_web/responsive/responsive_layout_screen.dart';
import 'package:flutter_valentine_greeting_web/responsive/web_screen_layout.dart';
import 'package:flutter_valentine_greeting_web/utils/theme.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: white,
      ),
      home: const ResponsiveLayout(
        desktopLayout: WebScreenLayout(),
        mobileLayout: MobileScreenLayout(),
      ),
    );
  }
}
