import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:old_scrap_house/core/constants.dart';
import 'package:old_scrap_house/core/gap.dart';

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
                  ForgotPassword(),
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

class AuthAlreadyHaveAccount extends StatelessWidget {
  const AuthAlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Already have an account?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              'Login',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: authBlue,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthIconButton extends StatelessWidget {
  const AuthIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assets/images/google.svg"),
            ),
            const Text(
              "Continue with Google",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          foregroundColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          backgroundColor: const MaterialStatePropertyAll(
            authBlue,
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: authBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: title,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
