import 'package:flutter/material.dart';

import 'widgets/service_view_body.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ServicesViewBody(),
    );
  }
}
