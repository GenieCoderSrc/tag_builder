import 'package:flutter/material.dart';

class GrayTag extends StatelessWidget {
  const GrayTag({super.key, required this.data, this.onPressed});

  final String data;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: Theme.of(context).hoverColor,
        padding: const EdgeInsets.all(5),
        child: Text(
          data,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
