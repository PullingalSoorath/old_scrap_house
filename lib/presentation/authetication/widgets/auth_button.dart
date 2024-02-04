import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_scrap_house/core/constants.dart';

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
