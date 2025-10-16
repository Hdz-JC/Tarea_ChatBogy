import 'package:chat_boggy/views/my_message_bubble_view.dart';
import 'package:chat_boggy/views/her_message_bubble_view.dart';
import 'package:chat_boggy/widgets/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget{
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          urlImageBubble:
                              'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: "Hola mundo",
                        );
                },
              ),
            ),
          ),
          const MessageFieldBox(),
        ],
      ),
    );
  }
}

//Expanded 