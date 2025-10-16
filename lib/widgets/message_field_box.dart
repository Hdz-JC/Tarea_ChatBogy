import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget{
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
  

   return TextFormField(
    controller: textController,
    focusNode: focusNode,
    decoration: _customInputDecoration(colors: colors),

    onTapOutside: (event) {
      print('quiero saber que haces $event');
      focusNode.unfocus();
    },

    onFieldSubmitted:(value) {
      print('print aqui $value');
      focusNode.requestFocus();
    },
   );

  }

  InputDecoration _customInputDecoration({required ColorScheme colors}) => 
      InputDecoration(
        enabledBorder: _customOutLineInputBorder(colors.primary),
        focusedBorder: _customOutLineInputBorder(colors.primaryContainer),
        hintText: 'Escribe un mensaje'
      );

  OutlineInputBorder _customOutLineInputBorder (Color color) =>
    OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(20),
    );

}