import 'package:flutter/material.dart';
class TextFieldRound extends StatelessWidget {
  const TextFieldRound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
