import 'package:app/presentation/themes/app_themes.dart';
import 'package:app/presentation/ui/custom/box.dart';
import 'package:app/presentation/ui/custom/form_field.dart';
import 'package:app/presentation/ui/custom/label_button.dart';
import 'package:app/presentation/ui/custom/no_state_button.dart';
import 'package:app/presentation/ui/custom/toggle_state_button.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/resources/resources.dart';
import 'package:go_router/go_router.dart';
import 'package:app/presentation/navigation/routers.dart';

const emailText = "Email";
const emailHint = "Type your email or telephone";
const passwordText = "Password";
const passwordHint = "Type your password";
const loginButton = "Log in";
const forgotPasswordButton = "I forgot my password";
const noAccountText = "Don't have an account";
const signupButton = "Sign up";

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GoRouter get _goRouter => Routers.authRouter;

  bool isFormValid = false;
  String selectedEmail = "";
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
                      text: emailText,
                      hint: emailHint,
                      onChanged: (value) {
                        setState(() {
                          selectedEmail = value;
                          validateFields();
                        });
                      },
                    ),
                    BMFormField(
                      text: passwordText,
                      hint: passwordHint,
                      isPasswordField: true,
                      onChanged: (value) {
                        setState(() {
                          selectedPassword = value;
                          validateFields();
                        });
                      },
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: spacing.xxs),
                      child: ToggleStateButton(
                        text: loginButton,
                        isEnabled: isFormValid,
                        onPressed: () {},
                      ),
                    ),
                    LabelButton(
                      text: forgotPasswordButton,
                      onPressed: () {},
                    ),
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
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: spacing.xs),
                      child: NoStateButton(
                        text: signupButton,
                        onPressed: () {
                          _goRouter.push('/signUp');
                        },
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
      final bool emailValid = RegExp(AuthConstants.EMAIL_REGEX).hasMatch(selectedEmail);
      final bool passwordValid = selectedPassword.length > AuthConstants.PASSWORD_MIN_LENGTH;
      isFormValid = emailValid && passwordValid;
    });
  }
}
