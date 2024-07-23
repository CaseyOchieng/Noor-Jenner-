// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:noorjenner/core/configs/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 60),
        backgroundColor: const Color.fromARGB(255, 138, 120, 120),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
