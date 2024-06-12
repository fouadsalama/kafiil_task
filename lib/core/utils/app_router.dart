import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kafiil_test/Features/Services/data/manger/popular_service_cubit/popular_service_cubit.dart';
import 'package:kafiil_test/Features/Services/data/manger/services_cubit/service_cubit.dart';
import 'package:kafiil_test/Features/Services/data/repo/service_repo_impl.dart';
import 'package:kafiil_test/Features/complete_data/presentation/views/complete_data_view.dart';
import 'package:kafiil_test/Features/countries/data/manger/countries_cubit/countries_name_cubit.dart';
import 'package:kafiil_test/Features/countries/data/repo/country_repo_impl.dart';
import 'package:kafiil_test/Features/login/presentation/views/login_view.dart';
import 'package:kafiil_test/Features/register/data/manger/visable_pass/visable_password_cubit.dart';
import 'package:kafiil_test/Features/register/presentation/views/register_view.dart';
import 'package:kafiil_test/Features/who_am_i_/presentation/views/who_am_i_view.dart';
import 'package:kafiil_test/core/utils/api_service.dart';

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
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CountriesNameCubit(
                CountryRepoImpl(
                  ApiService(
                    Dio(),
                  ),
                ),
              )..fetchCountyName(),
            ),
            BlocProvider(
              create: (context) => ServiceCubit(
                ServiceRepoImpl(
                  ApiService(Dio()),
                ),
              )..fetchServices(),
            ),
            BlocProvider(
              create: (context) => PopularServiceCubit(
                ServiceRepoImpl(
                  ApiService(Dio()),
                ),
              )..fetchPopularServices(),
            ),
          ],
          child: const WhoAmIView(),
        ),
      ),
    ],
  );
}
