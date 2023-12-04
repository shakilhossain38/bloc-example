import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem(
      {super.key,
      required this.color,
      required this.onTap,
      required this.label});

  final Color color;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 40,
        color: color,
        child:  Center(
          child: Text(label),
        ),
      ),
    );
  }
}
