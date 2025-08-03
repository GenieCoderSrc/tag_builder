import 'package:flutter/material.dart';

class ChipTag extends StatelessWidget {
  const ChipTag({super.key, required this.data, this.icon, this.onPressed});

  final String data;
  final Widget? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(top: 3, bottom: 3, left: 6, right: 6),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).dividerColor,
        ),
        child: Row(
          children: <Widget>[
            if (icon != null)
              Padding(padding: const EdgeInsets.only(right: 3), child: icon),
            Text(
              data,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
