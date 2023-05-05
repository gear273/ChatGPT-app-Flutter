import 'package:chatgpt_app/Utils/Routes.dart';
import 'package:chatgpt_app/const.dart';
import 'package:chatgpt_app/screens/ChatScreen.dart';
import 'package:chatgpt_app/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      initialRoute: Routes.login,
      routes: {
        '/login': (context) => LoginScreen(),
        '/chat': (context) => ChatScreen(),
      },
      home: const ChatScreen(),
    );
  }
}