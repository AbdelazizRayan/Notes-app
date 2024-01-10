import 'package:flutter/material.dart';

class CustomDonetIcon extends StatelessWidget {
  const CustomDonetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: const Color.fromARGB(7, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Icon(
          Icons.done,
          size: 28,
        ),
      ),
    );
  }
}
