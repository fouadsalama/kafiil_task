import 'package:flutter/material.dart';
import 'package:kafiil_test/constants.dart';
import 'package:kafiil_test/core/utils/styles.dart';

import 'widgets/who_am_i_body.dart';

class WhoAmIView extends StatelessWidget {
  const WhoAmIView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WhoAmIViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: Styles.textStyle12.copyWith(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: Styles.textStyle12.copyWith(
          color: const Color(0xffC3C5C8),
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: const Color(0xffC3C5C8),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Who Am I',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Services',
          ),
        ],
      ),
    );
  }
}
