import 'package:flutter/material.dart';

class TextFieldLoginRegister extends StatelessWidget {
  const TextFieldLoginRegister({
    super.key,
    required this.text_controller,required this.text, required this.password
  });

  final TextEditingController text_controller;
  final String text;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        style:const TextStyle(fontSize: 20),
        controller: text_controller,
        obscureText: password,
        decoration:  InputDecoration(filled: true,fillColor: Colors.white,
            border:const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))), hintText: text),
      ),
    );
  }
}
