import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/chat_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat grupal',
      home: ChatScreen(),
    );
  }
}