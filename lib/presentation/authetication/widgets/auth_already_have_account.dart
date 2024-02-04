import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_scrap_house/core/constants.dart';

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
