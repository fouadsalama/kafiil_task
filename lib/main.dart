import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kafiil_test/core/utils/app_router.dart';
import 'package:kafiil_test/simple_bloc_observer.dart';

import 'Features/complete_data/data/manger/change_gender_cubit/change_gender_cubit.dart';
import 'Features/complete_data/data/manger/counter_cubit/counter_salary_cubit.dart';
import 'Features/complete_data/data/manger/update_date_cubit/update_date_cubit.dart';
import 'Features/register/data/manger/user_type_select_cubit/user_type_select_cubit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterSalaryCubit(),
        ),
        BlocProvider(
          create: (context) => UpdateDateCubit(),
        ),
        BlocProvider(
          create: (context) => ChangeGenderCubit(),
        ),
        BlocProvider(
          create: (context) => UserTypeSelectCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.light().textTheme,
          ),
        ),
      ),
    );
  }
}
