import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String img;
  Display(this.img);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
