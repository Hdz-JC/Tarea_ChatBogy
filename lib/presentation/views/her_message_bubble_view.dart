import 'package:chat_boggy/presentation/widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class HerMessageBubbleView extends StatelessWidget {
  final ColorScheme colorScheme;
  final String urlImageBubble;
  
  const HerMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.urlImageBubble,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: null,
      urlImageBubble: urlImageBubble,
    );
  }
}