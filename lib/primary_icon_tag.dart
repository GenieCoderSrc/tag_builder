import 'package:flutter/material.dart';

class PrimaryIconTag extends StatelessWidget {
  const PrimaryIconTag({
    super.key,
    required this.data,
    required this.icon,
    this.onPressed,
  });

  final String data;
  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        data,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
