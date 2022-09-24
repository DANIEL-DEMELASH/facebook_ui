import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    Key? key,
    required this.icon,
    required this.color,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(label)
        ],
      ),
    );
  }
}
