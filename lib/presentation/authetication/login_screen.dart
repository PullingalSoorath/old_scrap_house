import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_scrap_house/core/constants.dart';
import 'package:old_scrap_house/core/gap.dart';
import 'widgets/auth_already_have_account.dart';
import 'widgets/auth_button.dart';
import 'widgets/auth_icon_button.dart';
import 'widgets/auth_text_field.dart';
import 'widgets/forgot_password.dart';
import 'widgets/textfield_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlutterLogo(size: 80),
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    appTitle,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    "The place where you can sell your scrap and your useless stuff.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Gap(
                    height: 20,
                  ),
                  Text(
                    "Let's Get Started...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(
                    height: 10,
                  ),
                  TextFieldHeading(
                    title: "Email",
                  ),
                  AuthTextField(
                    icon: Icons.person,
                    title: 'email@mail.com',
                  ),
                  TextFieldHeading(
                    title: 'Password',
                  ),
                  AuthTextField(
                    icon: CupertinoIcons.lock,
                    title: 'Password',
                  ),
                  ForgotPasswordTxtBtn(),
                  Gap(
                    height: 20,
                  ),
                  AuthButton(),
                  Gap(
                    height: 20,
                  ),
                  AuthIconButton(),
                  AuthAlreadyHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

