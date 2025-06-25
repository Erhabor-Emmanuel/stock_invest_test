import 'package:flutter/material.dart';

import '../../helpers/const/strings.dart';


class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final FocusNode _focusNode = FocusNode();
  bool _showClearIcon = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          decoration: InputDecoration(
            hintText: Strings.search,
            prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
          ),
        ),
      ),
    );
  }
}
