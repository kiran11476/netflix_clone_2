import 'package:flutter/material.dart';

class SsearchTextTitle extends StatelessWidget {
  final String title;
  SsearchTextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
