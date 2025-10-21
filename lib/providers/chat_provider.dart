
import 'package:chat_boggy/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> messagesList = [
    Message(
      text: "Hola, ¿cómo estás?",
      imageUrl:
          'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
      fromWho: FromWho.hers,
    ),
    Message(text: "¡Hola! Estoy bien, gracias. ¿Y tú?", fromWho: FromWho.me),
    Message(
      text: "También estoy bien. ¿Qué has estado haciendo últimamente?",
      imageUrl:
          'https://yesno.wtf/assets/yes/2-4a0d5f8f1f3f1e6f1f3f1e6f1f3f1e6f.gif',
      fromWho: FromWho.hers,
    ),
    Message(
      text: "He estado trabajando en algunos proyectos de Flutter.",
      fromWho: FromWho.me,
    ),
  ];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(text: message, fromWho: FromWho.me);
    messagesList.add(newMessage);
    notifyListeners();
  }
}






