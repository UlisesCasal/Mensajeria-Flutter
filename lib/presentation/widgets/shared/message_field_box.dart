import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode(

    );
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40)
    ); 

    final inputDecoration =  InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined), 
          onPressed: () { 
            //Obtengo el valor del texto
            final textValue = textController.value.text;
            textController.clear();
           },)
      );

    return TextFormField(
      //Si hace click fuera le saco el foco
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value){
        textController.clear();
        //Para mantener el foco en el campo
        focusNode.requestFocus();
      },
    );
  }
}