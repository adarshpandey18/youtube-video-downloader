import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required TextEditingController videoLink,
  }) : controller = videoLink;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Enter the link here...',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.redAccent.shade700,
        ),
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent.shade700,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
