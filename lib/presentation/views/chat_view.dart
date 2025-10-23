import 'package:chat_boggy/domain/entities/message.dart';
import 'package:chat_boggy/presentation/views/my_message_bubble_view.dart';
import 'package:chat_boggy/presentation/views/her_message_bubble_view.dart';
import 'package:chat_boggy/presentation/widgets/message_field_box.dart';
import 'package:chat_boggy/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: chatProvider.messagesList.length,
                controller: chatProvider.scrollController,
                itemBuilder: (context, index) {
                  return chatProvider.messagesList[index].fromWho ==
                          FromWho.hers
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messagesList[index],
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messagesList[index].text,
                        );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: MessageFieldBox(
              onSend: (value) => chatProvider.sendMessage(value),
            ),
          ),
        ],
      ),
    );
  }
}

//Expanded 