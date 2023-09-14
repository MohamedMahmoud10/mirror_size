import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/use_case/upload_user_body_measurement_use_case.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/custom_products/domain/use_case/get_custom_product_use_case.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/cubits/custom_product/custom_product_cubit.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/customize_kandora_screen.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/use_case/user_measurement_use_case.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_cubit.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/use_case/get_recommendation_use_case.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_cubit.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/use_case/user_init_use_case.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/presentation/cubit/init_user_cubit.dart';
import 'package:mirror_size/core/const/app_strings.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        final cacheUserId = di<SharedPreferences>().get(CacheString.userIdKey);

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
            ),
            BlocProvider<CustomProductCubit>(
              create: (context) =>
                  CustomProductCubit(useCase: di<GetCustomProductUseCase>())
                    ..getCustomerProduct(),
            ),
            BlocProvider<GetRecommendationCubit>(
              create: (context) => GetRecommendationCubit(
                useCase: di<GetRecommendationUseCase>(),
              )..getUserBodyMeasurement(
                  GetRecommendationMeasurementRequestEntity(
                    apiKey: AppString.apiKey,
                    apparelName: 'Kandora',
                    brandName: 'CanCan',
                    merchantId: AppString.merchantID,
                    productName: "GET_MEASURED",
                    gender: AppString.gender,
                    userId: cacheUserId.toString(),
                  ),
                ),
            ),
            BlocProvider<UplaodBodyMeasurementCubit>(
              create: (context) => UplaodBodyMeasurementCubit(
                useCase: di<UploadUserBodyMeasurementuseCase>(),
              ),
            ),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
              ),
              useMaterial3: true,
            ),
            // home: const UploadUserMeasurement(),
            home: const CustomizeKandoraScreen(),
            // home: const UserMeasurementScreen(),
          ),
        );
      },
    );
  }
}
