import 'package:flutter/material.dart';
import 'package:tag_builder/primary_icon_tag.dart';
import 'package:tag_builder/ratting_small_tag.dart';

import 'chip_tag.dart';
import 'gray_tag.dart';
import 'offer_tag.dart';
import 'out_line_tag.dart';
import 'primary_tag.dart';
import 'status_tag.dart';

enum TagType {
  primary,
  primaryIcon,
  outLine,
  secondaryIcon,
  small,
  status,
  offer,
  light,
  gray,
  chip,
  rate,
  rateSmall,
}

class AppTag extends StatelessWidget {
  const AppTag(this.data, {super.key, this.type, this.icon, this.onPressed});

  final String data;
  final TagType? type;
  final Widget? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TagType.primary:
        return PrimaryTag(data: data, onPressed: onPressed);
      case TagType.primaryIcon:
        return PrimaryIconTag(
          data: data,
          onPressed: onPressed,
          icon: icon ?? const Icon(Icons.check),
        );
      case TagType.outLine:
        return OutLineTag(data: data, onPressed: onPressed);
      case TagType.status:
        return StatusTag(data: data, onPressed: onPressed);
      case TagType.offer:
        return OfferTag(data: data, onPressed: onPressed);
      case TagType.gray:
        return GrayTag(data: data, onPressed: onPressed);
      case TagType.chip:
        return ChipTag(data: data, onPressed: onPressed);
      case TagType.rateSmall:
        return RattingSmallTag(data: data, onPressed: onPressed);
      default:
        return InkWell(onTap: onPressed, child: Container());
    }
  }
}
