import 'package:flutter/material.dart';


class CustomRow extends StatelessWidget {
  final String text;
  final String image;
  final IconData icons;

  CustomRow({super.key, required this.text, required this.image, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 139,
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(width: 4),
          Text(text),
          Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}
