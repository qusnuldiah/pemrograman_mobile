import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// Widget teks berwarna merah menggunakan plugin AutoSizeText
class RedTextWidget extends StatelessWidget {
  final String text; // variabel untuk menampung teks

  // constructor wajib menerima parameter text
  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
