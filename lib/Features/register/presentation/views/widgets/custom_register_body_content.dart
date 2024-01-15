import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/Features/complete_data/presentation/views/complete_data_view.dart';
import 'package:kafiil_test/Features/register/data/manger/visable_pass/visable_password_cubit.dart';
import 'package:kafiil_test/Features/register/presentation/views/widgets/name_section.dart';
import '../../../../../constants.dart';
import 'custom_Register_error_message.dart';
import 'custom_button.dart';
import 'custom_divider_complete_widget.dart';
import 'custom_text_form_failed.dart';
import 'title_register_page.dart';
import 'user_type_section.dart';

bool hasError = true;

class RegisterBodyContent extends StatefulWidget {
  const RegisterBodyContent({
    super.key,
  });

  @override
  State<RegisterBodyContent> createState() => _RegisterBodyContentState();
}

class _RegisterBodyContentState extends State<RegisterBodyContent> {
  final _form = GlobalKey<FormState>();

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  void saveForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: BlocBuilder<VisablePasswordCubit, VisablePasswordState>(
        builder: (context, state) {
          final visiblePass =
              BlocProvider.of<VisablePasswordCubit>(context).isVisable;
          return ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Gap(16),
              hasError == true
                  ? Container(
                      height: 0,
                    )
                  : const CustomRegisterErrorMessage(),
              const Gap(32),
              const TitleRegisterPage(),
              const Gap(14),
              const CustomDividerWidget(),
              const Gap(32),
              DisplayNameSection(
                firstNameController: firstName,
                lastNameController: lastName,
              ),
              CustomDisplayTextFormFailed(
                title: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty ||
                      !(value.contains('@')) ||
                      !(value.contains('.com'))) {
                    setState(() {
                      hasError = false;
                    });
                    return;
                  } else {
                    setState(() {
                      hasError = true;
                    });
                    return null;
                  }
                },
                controller: email,
              ),
              CustomDisplayTextFormFailed(
                title: 'Password',
                obscureText: visiblePass ? false : true,
                keyboardType: TextInputType.visiblePassword,
                controller: password,
                validator: (value) {
                  if (value == password.text && value!.length < 8) {
                    setState(() {
                      hasError = false;
                    });
                    return;
                  } else {
                    setState(() => hasError = true);
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<VisablePasswordCubit>(context)
                        .viabilityIcon();
                  },
                  icon: Icon(
                    visiblePass ? Icons.visibility : Icons.visibility_off,
                    color: kIconsColor,
                  ),
                ),
              ),
              CustomDisplayTextFormFailed(
                title: 'Confirm Password',
                obscureText: visiblePass ? false : true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == confirmPass.text && value!.length < 8 ||
                      password == confirmPass) {
                    setState(() {
                      hasError = false;
                    });
                    return;
                  } else {
                    setState(() => hasError = true);
                  }
                  return null;
                },
                controller: confirmPass,
                suffixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<VisablePasswordCubit>(context)
                        .viabilityIcon();
                  },
                  icon: Icon(
                    visiblePass ? Icons.visibility : Icons.visibility_off,
                    color: kIconsColor,
                  ),
                ),
              ),
              const UserTypeSection(),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: 'Next',
                    onTap: () {
                      saveForm();
                      if (hasError == true) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const CompleteDataView();
                          },
                        ));
                      }
                    },
                  ),
                ],
              ),
              const Gap(34),
            ],
          );
        },
      ),
    );
  }
}
