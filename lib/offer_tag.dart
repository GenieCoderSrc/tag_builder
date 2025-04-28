import 'package:flutter/material.dart';

class OfferTag extends StatelessWidget {
  const OfferTag({super.key, required this.data, this.onPressed});

  final String data;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(
          left: 6,
          right: 6,
          top: 3,
          bottom: 3,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          data,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),
    );
  }
}
