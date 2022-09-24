import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.onPressed});

  final IconData icon;
  final double iconSize;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
