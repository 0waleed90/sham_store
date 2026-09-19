import 'package:flutter/material.dart';

class LineImage extends StatelessWidget {
  const LineImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/photo/line.png',fit: BoxFit.fitWidth, width: double.infinity);
  }
}
