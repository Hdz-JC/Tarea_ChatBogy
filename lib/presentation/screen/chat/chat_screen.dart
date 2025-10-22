import 'package:chat_boggy/presentation/views/chat_view.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my love ❤️'),
        centerTitle: false,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i.pinimg.com/736x/10/52/84/105284eb3a3446c5f3374be1150362e9.jpg'
          ),
        ),
      ),
      body: ChatView(),
    );
  }
}