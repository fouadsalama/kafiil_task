import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/Features/register/presentation/views/widgets/custom_register_body_content.dart';
import 'package:kafiil_test/Features/register/presentation/views/widgets/custom_text_form_failed.dart';

class DisplayNameSection extends StatelessWidget {
  const DisplayNameSection({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDisplayTextFormFailed(
            title: 'First Name',
            controller: firstNameController,
            validator: (value) {
              if (value!.isEmpty || value.length < 50) {
                hasError = false;
              }
              return null;
            },
          ),
        ),
        const Gap(8),
        Expanded(
          child: CustomDisplayTextFormFailed(
            title: 'Last Name',
            controller: lastNameController,
          ),
        ),
      ],
    );
  }
}
