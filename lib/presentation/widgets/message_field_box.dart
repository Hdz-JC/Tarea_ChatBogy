import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget{
  final void Function(String) onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
  

   return TextFormField(
    controller: textController,
    focusNode: focusNode,
    decoration: _customInputDecoration(
      colors: colors,
      onSend: () {
        final textValue = textController.value.text;
        if(textValue.isEmpty){
          print(textValue);
          widget.onValue(textValue);
          textController.clear();
          focusNode.requestFocus();
        }
      },),

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

  InputDecoration _customInputDecoration({
    required ColorScheme colors,
    required VoidCallback onSend }) => 
  
      InputDecoration(
        enabledBorder: _customOutLineInputBorder(colors.primary),
        focusedBorder: _customOutLineInputBorder(colors.primaryContainer),
        hintText: 'Escribe un mensaje',
        suffixIcon: IconButton(onPressed: onSend, icon: const Icon(Icons.send)),
      );

  OutlineInputBorder _customOutLineInputBorder (Color color) =>
    OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(20),
    );
}