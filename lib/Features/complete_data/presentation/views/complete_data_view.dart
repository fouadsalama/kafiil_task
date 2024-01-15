import 'package:flutter/material.dart';

import 'widgets/complete_data_view_body.dart';

class CompleteDataView extends StatelessWidget {
  const CompleteDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompleteDataViewBody(),
    );
  }
}
