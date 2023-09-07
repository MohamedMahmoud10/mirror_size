import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/use_case/user_measurement_use_case.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/screens/user_measurement_screen/user_measurement_screen.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/use_case/user_init_use_case.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/presentation/cubit/init_user_cubit.dart';
import 'package:mirror_size/core/di/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  InitUserCubit(useCase: di<UserInitUseCase>())..initUser(),
              lazy: false,
            ),
            BlocProvider(
              create: (context) => GetUserMeasurementCubit(
                useCase: di<UserMeasurementUseCase>(),
              ),
            )
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const UserMeasurementScreen(),
          ),
        );
      },
    );
  }
}
