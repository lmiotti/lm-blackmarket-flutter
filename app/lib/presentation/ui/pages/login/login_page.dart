import 'package:app/main/init.dart';
import 'package:app/presentation/themes/app_themes.dart';
import 'package:app/presentation/themes/local_theme.dart';
import 'package:app/presentation/ui/custom/box.dart';
import 'package:app/presentation/ui/custom/form_field.dart';
import 'package:app/presentation/ui/custom/label_button.dart';
import 'package:app/presentation/ui/custom/no_state_button.dart';
import 'package:app/presentation/ui/custom/toggle_state_button.dart';
import 'package:domain/services/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/resources/resources.dart';

const emailText = "Email";
const emailHint = "Type your email or telephone";
const passwordText = "Password";
const passwordHint = "Type your password";
const loginButton = "Log in";
const forgotPasswordButton = "I forgot my password";
const noAccountText = "Don't have an account";
const signupButton = "Sign up";

class LoginPage extends StatelessWidget {
  AuthService get _authService => getIt();

  const LoginPage({Key? key}) : super(key: key);

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
                    const BMFormField(text: emailText, hint: emailHint,),
                    const BMFormField(text: passwordText, hint: passwordHint,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: spacing.xxs),
                      child: const ToggleStateButton(text: loginButton),
                    ),
                    const LabelButton(text: forgotPasswordButton),
                  ],
                ),
              ),
              Box(
                margin: EdgeInsets.symmetric(horizontal: spacing.xl),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      noAccountText,
                      style: TextStyle(
                        fontSize: context.localTheme.subtitleMFontSize,
                        color: LocalColor.black,
                      ),
                    ),
                    const NoStateButton(text: signupButton),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
