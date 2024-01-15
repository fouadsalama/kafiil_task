import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Gap(55),
          Expanded(
            child: LoginForm(),
          ),
        ],
      ),
    );
  }
}
