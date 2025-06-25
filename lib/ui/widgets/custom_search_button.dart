import 'package:flutter/material.dart';
import '../../helpers/const/colors.dart';
import '../../helpers/const/strings.dart';
import '../../helpers/const/styles.dart';



class CustomSearchButton extends StatelessWidget {
  final String text;
  const CustomSearchButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.search, size: 16, color: Colors.grey),
          const SizedBox(width: 7),
          Text(Strings.search, style: iconText),
        ],
      ),
    );
  }
}
