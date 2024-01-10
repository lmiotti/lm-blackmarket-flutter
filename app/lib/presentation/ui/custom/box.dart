import 'package:flutter/material.dart';
import 'package:app/presentation/resources/resources.dart';

class Box extends StatelessWidget {
  const Box({super.key, this.cardChild, this.margin});

  final Widget? cardChild;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: Dimen.roundedCorner,
      ),
      child: Container(
        margin: EdgeInsets.only(left: spacing.xl, right: spacing.xl, top: spacing.l, bottom: spacing.xs),
        child: cardChild,
      ),
    );
  }
}
