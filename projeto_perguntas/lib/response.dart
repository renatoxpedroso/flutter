import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  const Response(this.text, this.onSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: onSelected,
        child: Text(text),
      ),
    );
  }
}