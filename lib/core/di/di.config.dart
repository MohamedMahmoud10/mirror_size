// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../app/feat/get_measurment_size/data/data_source/remote/get_measurement_base_remote_data_source.dart'
    as _i5;
import '../../app/feat/get_measurment_size/data/data_source/remote/get_measurement_remote_data_source_impl.dart'
    as _i6;
import '../../app/feat/get_measurment_size/data/repo/get_measurement_repo.dart'
    as _i8;
import '../../app/feat/get_measurment_size/domain/base_repo/get_measurement_base_repo.dart'
    as _i7;
import '../../app/feat/get_measurment_size/domain/use_case/user_measurement_use_case.dart'
    as _i10;
import '../../app/feat/init_mirror_size_user/data/data_source/remote/init_user_base_remote_data_source.dart'
    as _i13;
import '../../app/feat/init_mirror_size_user/data/data_source/remote/init_user_remote_data_source_impl.dart'
    as _i14;
import '../../app/feat/init_mirror_size_user/data/repo/init_user_repo.dart'
    as _i17;
import '../../app/feat/init_mirror_size_user/domain/base_repo/init_user_base_repo.dart'
    as _i16;
import '../../app/feat/init_mirror_size_user/domain/use_case/user_init_use_case.dart'
    as _i18;
import '../api/api_consumer.dart' as _i15;
import '../api/app_interceptor.dart' as _i3;
import '../api/dio_consumer.dart' as _i12;
import '../api/index.dart' as _i11;
import 'register_module.dart' as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppIntercepters>(() => _i3.AppIntercepters());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.GetMeasurementBaseRemoteDataSource>(
        () => _i6.GetMeasurementRemoteDataSource());
    gh.lazySingleton<_i7.GetMeasurementBaseRepo>(() => _i8.GetMeasurementRepo(
        baseRemoteDataSource: gh<_i5.GetMeasurementBaseRemoteDataSource>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i10.UserMeasurementUseCase>(() =>
        _i10.UserMeasurementUseCase(
            baseRepo: gh<_i7.GetMeasurementBaseRepo>()));
    gh.lazySingleton<_i11.ApiConsumer>(
        () => _i12.DioConsumer(client: gh<_i4.Dio>()));
    gh.lazySingleton<_i13.InitUserBaseRemoteDataSource>(
        () => _i14.InitUserRemoteDataSource(client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i16.InitUserBaseRepo>(() => _i17.InitUserRepo(
        baseRemoteDataSource: gh<_i13.InitUserBaseRemoteDataSource>()));
    gh.lazySingleton<_i18.UserInitUseCase>(
        () => _i18.UserInitUseCase(baseRepo: gh<_i16.InitUserBaseRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
