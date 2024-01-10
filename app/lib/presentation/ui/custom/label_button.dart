import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: context.localTheme.buttonFontSize,
          color: LocalColor.blue,
        ),
      ),
      onPressed: () {},
    );
  }
}
