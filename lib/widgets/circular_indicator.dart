import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  final double height;
  final double width;
  const CircularIndicator({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: height,
      width: width,
      child: const Center(
        child: CircularProgressIndicator(color: Colors.blue,),
      ),
    );
  }
}
