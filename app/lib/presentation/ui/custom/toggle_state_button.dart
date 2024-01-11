import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class ToggleStateButton extends StatelessWidget {
  const ToggleStateButton(
      {super.key, required this.text, required this.isEnabled, required this.onPressed,});

  final String text;
  final bool isEnabled;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minHeight: Dimen.buttonHeight),
      fillColor: isEnabled ? LocalColor.black : LocalColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: Dimen.roundedCorner,
      ),
      onPressed: () { if (isEnabled) onPressed(); },
      child: Text(
        text,
        style: TextStyle(
          fontSize: context.localTheme.buttonFontSize,
          color: isEnabled ? LocalColor.white : LocalColor.darkGray,
        ),
      ),
    );
  }
}
