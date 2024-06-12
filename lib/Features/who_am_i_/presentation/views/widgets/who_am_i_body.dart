import 'package:flutter/material.dart';
import 'who_am_i_form.dart';

class WhoAmIViewBody extends StatelessWidget {
  const WhoAmIViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: WhoAmIForm(),
    );
  }
}
