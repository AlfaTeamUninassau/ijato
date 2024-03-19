// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldPrimary extends StatefulWidget {
  final String textFieldName;

  const TextFieldPrimary({super.key, required this.textFieldName});

  @override
  State<TextFieldPrimary> createState() => _TextFieldPrimaryState();
}

class _TextFieldPrimaryState extends State<TextFieldPrimary> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoTextField(
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        padding: const EdgeInsets.all(15),
        placeholder: widget.textFieldName,
        placeholderStyle: const TextStyle(color: Colors.black38, fontSize: 14),
        style: const TextStyle(color: Colors.black87, fontSize: 14),
        decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            )),
      ),
    );
  }
}
