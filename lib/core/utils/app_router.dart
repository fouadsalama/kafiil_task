import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kafiil_test/Features/complete_data/presentation/views/complete_data_view.dart';
import 'package:kafiil_test/Features/login/presentation/views/login_view.dart';
import 'package:kafiil_test/Features/register/data/manger/visable_pass/visable_password_cubit.dart';
import 'package:kafiil_test/Features/register/presentation/views/register_view.dart';
import 'package:kafiil_test/Features/who_am_i_/presentation/views/who_am_i_view.dart';

abstract class AppRouter {
  static const kRegisterView = '/RegisterView';
  static const kCompleteDataView = '/CompleteData';
  static const kWhoAmIView = '/WhoAmIView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => VisablePasswordCubit(),
            ),
          ],
          child: const RegisterView(),
        ),
      ),
      GoRoute(
        path: kCompleteDataView,
        builder: (context, state) => const CompleteDataView(),
      ),
      GoRoute(
        path: kWhoAmIView,
        builder: (context, state) => const WhoAmIView(),
      ),
    ],
  );
}
