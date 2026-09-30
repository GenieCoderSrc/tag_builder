import 'package:flutter/material.dart';

class PrimaryTag extends StatelessWidget {
  const PrimaryTag({super.key, required this.data, this.onPressed});

  final String data;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        data,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
