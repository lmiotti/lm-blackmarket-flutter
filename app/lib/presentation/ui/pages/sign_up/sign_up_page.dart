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

const emailLabel = "Email";
const emailHint = "Type your email";
const fullNameLabel = "Full Name";
const fullNameHint = "Type your full name";
const passwordLabel = "Password";
const passwordHint = "Type your password";
const signupButton = "Sign up";
const bySigningText = "By signing up, you accept the ";
const dataPolicyText = "Data Policy ";
const andTheText = "and the ";
const cookiesPolicyText = "Cookies Policy.";
const alreadyHaveAccountText = "Already have an account? ";
const loginText = "Log in";

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
                    text: emailLabel,
                    hint: emailHint,
                    onChanged: (value) {
                      setState(() {
                        selectedEmail = value;
                        validateFields();
                      });
                    },
                  ),
                  BMFormField(
                    text: fullNameLabel,
                    hint: fullNameHint,
                    onChanged: (value) {
                      setState(() {
                        selectedFullName = value;
                        validateFields();
                      });
                    },
                  ),
                  BMFormField(
                    text: passwordLabel,
                    hint: passwordHint,
                    isPasswordField: true,
                    onChanged: (value) {
                      selectedPassword = value;
                      validateFields();
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: spacing.xxs),
                    child: ToggleStateButton(
                      text: signupButton,
                      isEnabled: isFormValid,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: context.localTheme.bodyMFontSize,),
                        children: [
                          const TextSpan(text: bySigningText),
                          TextSpan(
                            text: dataPolicyText,
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () { openBrowser(); },
                          ),
                          const TextSpan(text: andTheText),
                          TextSpan(
                            text: cookiesPolicyText,
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () { openBrowser(); },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: context.localTheme.bodyMFontSize,),
                        children: [
                          const TextSpan(text: alreadyHaveAccountText),
                          TextSpan(
                            text: loginText,
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _goRouter.pop();
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
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
