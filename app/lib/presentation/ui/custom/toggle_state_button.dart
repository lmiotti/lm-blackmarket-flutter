import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class ToggleStateButton extends StatelessWidget {
  const ToggleStateButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minHeight: Dimen.buttonHeight),
      fillColor: LocalColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: Dimen.roundedCorner,
      ),
      onPressed: () { },
      child: Text(
        text,
        style: TextStyle(
          fontSize: context.localTheme.buttonFontSize,
          color: LocalColor.darkGray,
        ),
      ),
    );
  }
}
