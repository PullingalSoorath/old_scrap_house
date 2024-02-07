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
    TextEditingController? userNameController, passwordController;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FlutterLogo(size: 80),
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    appTitle,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "The place where you can sell your scrap and your useless stuff.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Gap(
                    height: 20,
                  ),
                  const Text(
                    "Let's Get Started...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(
                    height: 10,
                  ),
                  const TextFieldHeading(
                    title: "Email",
                  ),
                  AuthTextField(
                    // validator: ,
                    controller: userNameController,
                    icon: Icons.person,
                    title: 'email@mail.com',
                  ),
                  const TextFieldHeading(
                    title: 'Password',
                  ),

                  //add a eye icon to enable or disable the obscure text
                  AuthTextField(
                    // validator: ,
                    controller: passwordController,
                    obscureText: true,
                    icon: CupertinoIcons.lock,
                    title: 'Password',
                  ),
                  const ForgotPasswordTxtBtn(),
                  const Gap(
                    height: 20,
                  ),
                  const AuthButton(),
                  const Gap(
                    height: 20,
                  ),
                  const AuthIconButton(),
                  const AuthAlreadyHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
