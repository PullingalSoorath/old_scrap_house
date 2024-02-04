import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_scrap_house/core/constants.dart';

class ForgotPasswordTxtBtn extends StatelessWidget {
  const ForgotPasswordTxtBtn({
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
