import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:myapp/presentation/screens/chat/chat_screen.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      title: 'Material App',
      home: const ChatScreen()
    );
  }
}