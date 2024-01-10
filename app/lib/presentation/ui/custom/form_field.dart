import 'package:app/presentation/resources/resources.dart';
import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

class BMFormField extends StatelessWidget {
  const BMFormField({super.key, required this.text, required this.hint});

  final String text;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: spacing.xxs),
          child: Text(
            text,
            style: TextStyle(
              fontSize: context.localTheme.labelFontSize,
              color: LocalColor.black,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: spacing.xl),
          child: TextField(
            style: TextStyle(
              fontSize: context.localTheme.bodyMFontSize,
              color: LocalColor.black,
            ),
            decoration: InputDecoration(
              hintText: hint,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
            ),
          ),
        ),
      ],
    );
  }
}

const outlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 1.0, color: Color(0xFF00031A)),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
