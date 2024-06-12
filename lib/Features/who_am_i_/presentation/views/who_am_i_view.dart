import 'package:flutter/material.dart';
import 'package:kafiil_test/Features/Services/presentation/views/services_view.dart';
import 'package:kafiil_test/Features/countries/presentation/views/countries_view.dart';
import 'package:kafiil_test/constants.dart';
import 'package:kafiil_test/core/utils/styles.dart';

import 'widgets/who_am_i_body.dart';

class WhoAmIView extends StatefulWidget {
  const WhoAmIView({super.key});

  @override
  State<WhoAmIView> createState() => _WhoAmIViewState();
}

class _WhoAmIViewState extends State<WhoAmIView> {
  int isSelected = 0;
  List screens = [
    const WhoAmIViewBody(),
    const CountriesView(),
    const ServicesView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[isSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: isSelected,
        onTap: (value) {
          setState(() {
            isSelected = value;
          });
        },
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
