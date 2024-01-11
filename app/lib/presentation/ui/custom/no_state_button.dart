import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class NoStateButton extends StatelessWidget {
  const NoStateButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minHeight: Dimen.buttonHeight),
      shape: const RoundedRectangleBorder(
        borderRadius: Dimen.roundedCorner,
        side: BorderSide(color: LocalColor.black, width: Dimen.borderWidth),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: context.localTheme.buttonFontSize,
          color: LocalColor.black,
        ),
      ),
      onPressed: () { onPressed(); },
    );
  }
}
