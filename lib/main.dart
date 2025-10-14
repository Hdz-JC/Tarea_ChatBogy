import 'package:chat_boggy/config/theme/app_theme.dart';
import 'package:chat_boggy/screen/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColors: 4).theme(),
      home: const ChatScreen(),
    );
  }
}


