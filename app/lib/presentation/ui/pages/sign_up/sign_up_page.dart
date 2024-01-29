import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app/presentation/ui/custom/box.dart';
import 'package:app/presentation/resources/resources.dart';
import 'package:app/presentation/ui/custom/form_field.dart';
import 'package:app/presentation/ui/custom/toggle_state_button.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:app/presentation/themes/app_themes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';
import 'package:app/presentation/navigation/routers.dart';

import '../../../resources/locale/generated/l10n.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  GoRouter get _goRouter => Routers.authRouter;

  bool isFormValid = false;
  String selectedEmail = "";
  String selectedFullName = "";
  String selectedPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Box(
              margin: EdgeInsets.symmetric(horizontal: spacing.xl, vertical: spacing.xxxxxl),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: spacing.l),
                    child: Image.asset(Images.blackMarketLogo.value),
                  ),
                  BMFormField(
                    text: S.of(context).emailLabel,
                    hint: S.of(context).emailHint,
                    onChanged: (value) {
                      setState(() {
                        selectedEmail = value;
                        validateFields();
                      });
                    },
                  ),
                  BMFormField(
                    text: S.of(context).fullNameLabel,
                    hint: S.of(context).fullNameHint,
                    onChanged: (value) {
                      setState(() {
                        selectedFullName = value;
                        validateFields();
                      });
                    },
                  ),
                  BMFormField(
                    text: S.of(context).passwordLabel,
                    hint: S.of(context).passwordHint,
                    isPasswordField: true,
                    onChanged: (value) {
                      selectedPassword = value;
                      validateFields();
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: spacing.xxs),
                    child: ToggleStateButton(
                      text: S.of(context).signupButton,
                      isEnabled: isFormValid,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: context.localTheme.bodyMFontSize,),
                      children: [
                        TextSpan(text: S.of(context).bySigningText),
                        TextSpan(
                          text: S.of(context).dataPolicyText,
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () { openBrowser(); },
                        ),
                        TextSpan(text: S.of(context).andTheText),
                        TextSpan(
                          text: S.of(context).cookiesPolicyText,
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () { openBrowser(); },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: context.localTheme.bodyMFontSize,),
                      children: [
                        TextSpan(text: S.of(context).alreadyHaveAccountText),
                        TextSpan(
                          text: S.of(context).loginText,
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _goRouter.pop();
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateFields() {
    setState(() {
      final bool isEmailValid = RegExp(AuthConstants.EMAIL_REGEX).hasMatch(selectedEmail);
      final bool isFullNameValid = selectedFullName.isNotEmpty;
      final bool isPasswordValid = selectedPassword.length > AuthConstants.PASSWORD_MIN_LENGTH;
      isFormValid = isEmailValid && isFullNameValid && isPasswordValid;
    });
  }

  void openBrowser() async {
    final Uri url = Uri.parse('https://rootstrap.com');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
