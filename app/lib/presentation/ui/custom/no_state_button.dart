import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class NoStateButton extends StatelessWidget {
  const NoStateButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: Dimen.roundedCorner,
          side: BorderSide(color: LocalColor.black, width: Dimen.borderWidth),
      ),
      onPressed: () {},
      child:
      Text(
        text,
        style: TextStyle(
          fontSize: context.localTheme.buttonFontSize,
          color: LocalColor.black,
        ),
      ),
    );
  }
}
