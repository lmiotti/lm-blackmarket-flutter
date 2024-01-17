import 'package:app/presentation/resources/resources.dart';
import 'package:app/presentation/themes/app_themes.dart';
import 'package:flutter/material.dart';

class BMFormField extends StatefulWidget {
  const BMFormField({super.key, required this.text, required this.hint, this.isPasswordField, required this.onChanged});

  final String text;
  final String hint;
  final bool? isPasswordField;
  final Function onChanged;

@override
  _BMFormFieldState createState() => _BMFormFieldState(
    text: text,
    hint: hint,
    isPasswordField: isPasswordField,
    onChanged: onChanged
  );
}

class _BMFormFieldState extends State<BMFormField> {
  _BMFormFieldState({required this.text, required this.hint, this.isPasswordField, required this.onChanged});

  final String text;
  final String hint;
  final bool? isPasswordField;
  final Function onChanged;
  bool isPasswordVisible = false;


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
          height: Dimen.formFieldHeight,
          child: TextField(
            obscureText: (isPasswordField ?? false) ? !isPasswordVisible : false,
            style: TextStyle(
              fontSize: context.localTheme.bodyMFontSize,
              color: LocalColor.black,
            ),
            decoration: InputDecoration(
              hintText: hint,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              suffixIcon: getPasswordEye(isPasswordField ?? false),
            ),
            onChanged: (value) {
              onChanged(value);
            },
          ),
        ),
      ],
    );
  }

  Widget? getPasswordEye(bool isPasswordField) {
    if (isPasswordField) {
      return IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: LocalColor.black,
        ),
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
      );
    } else {
      null;
    }
  }
}

const outlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 1.0, color: Color(0xFF00031A)),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
