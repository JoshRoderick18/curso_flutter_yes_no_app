import 'package:curso_flutter_yes_no_app/config/theme/app_theme.dart';
import 'package:curso_flutter_yes_no_app/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      title: 'Yes No App',
      home: const ChatScreen(),
    );
  }
}
