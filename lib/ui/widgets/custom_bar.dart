import 'package:flutter/material.dart';
import '../../helpers/const/strings.dart';
import '../../helpers/const/styles.dart';

class CustomBar extends StatelessWidget {
  final String text;

  const CustomBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.pop(context); // or custom navigation
          },
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade100,
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        const SizedBox(width: 8),
        Text(Strings.appTittle, style: heading1),
      ],
    );
  }
}
