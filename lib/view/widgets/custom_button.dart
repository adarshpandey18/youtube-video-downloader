import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  const CustomButton({
    super.key,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => function(),
      label: Text(
        text,
        style: const TextStyle(fontSize: 22, letterSpacing: 2),
      ),
      icon: const Icon(Icons.download),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent.shade700,
        foregroundColor: Colors.white,
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledMouseCursor: SystemMouseCursors.click,
        elevation: 0,
        minimumSize: const Size(double.maxFinite, 50),
      ),
    );
  }
}
