import 'package:flutter/material.dart';
import 'pages/chat_list_page.dart';
import 'pages/chat_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Chat UI',
      theme: ThemeData(
          colorScheme: const ColorScheme(
        primary: Color(0xFF2FC639),
        primaryVariant: Color(0xFF3dfc49),
        secondary: Color(0xFF616570),
        secondaryVariant: Color(0x9F616570),
        background: Color(0xFFEEF8F0),
        surface: Color(0xFF808080),
        onBackground: Colors.white,
        error: Colors.redAccent,
        onError: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.redAccent,
        onSurface: Colors.redAccent,
        brightness: Brightness.light,
      )),
      debugShowCheckedModeBanner: false,
      home: const ChatListPage(),
    );
  }
}
