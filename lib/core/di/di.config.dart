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

import '../../app/feat/body_measurement/get_body_measurement/data/data_source/remote/get_body_measurement_base_remote_data_source.dart'
    as _i18;
import '../../app/feat/body_measurement/get_body_measurement/data/data_source/remote/get_body_measurement_remote_data_source_impl.dart'
    as _i19;
import '../../app/feat/body_measurement/get_body_measurement/data/repo/get_body_measurement_repo.dart'
    as _i21;
import '../../app/feat/body_measurement/get_body_measurement/domain/base_repo/get_body_measurement_base_repo.dart'
    as _i20;
import '../../app/feat/body_measurement/get_body_measurement/domain/use_case/get_body_measurement_use_case.dart'
    as _i22;
import '../../app/feat/body_measurement/upload_user_measurement/data/data_source/remote/upload_body_measurement_base_remote_data_source.dart'
    as _i32;
import '../../app/feat/body_measurement/upload_user_measurement/data/data_source/remote/upload_body_measurement_remote_data_source_impl.dart'
    as _i33;
import '../../app/feat/body_measurement/upload_user_measurement/data/repo/upload_body_measurement_repo.dart'
    as _i35;
import '../../app/feat/body_measurement/upload_user_measurement/domain/base_repo/upload_user_body_measurement.dart'
    as _i34;
import '../../app/feat/body_measurement/upload_user_measurement/domain/use_case/upload_user_body_measurement_use_case.dart'
    as _i38;
import '../../app/feat/custom_products/data/data_source/remote/custom_products_remote_data_source.dart'
    as _i13;
import '../../app/feat/custom_products/data/data_source/remote/custom_products_remote_data_source_impl.dart'
    as _i14;
import '../../app/feat/custom_products/data/repo/custom_product_repo.dart'
    as _i17;
import '../../app/feat/custom_products/domain/base_repo/custom_product_base_repo.dart'
    as _i16;
import '../../app/feat/custom_products/domain/use_case/get_custom_product_use_case.dart'
    as _i23;
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
import '../../app/feat/get_user_measurement_from_mirroir_size/data/data_source/remote/get_recommendation_size_base_remote_data_source.dart'
    as _i24;
import '../../app/feat/get_user_measurement_from_mirroir_size/data/data_source/remote/get_recommendation_size_remote_data_source_impl.dart'
    as _i25;
import '../../app/feat/get_user_measurement_from_mirroir_size/data/repo/upload_body_measurement_repo.dart'
    as _i27;
import '../../app/feat/get_user_measurement_from_mirroir_size/domain/base_repo/get_recommendation_base_repo.dart'
    as _i26;
import '../../app/feat/get_user_measurement_from_mirroir_size/domain/use_case/get_recommendation_use_case.dart'
    as _i37;
import '../../app/feat/init_mirror_size_user/data/data_source/remote/init_user_base_remote_data_source.dart'
    as _i28;
import '../../app/feat/init_mirror_size_user/data/data_source/remote/init_user_remote_data_source_impl.dart'
    as _i29;
import '../../app/feat/init_mirror_size_user/data/repo/init_user_repo.dart'
    as _i31;
import '../../app/feat/init_mirror_size_user/domain/base_repo/init_user_base_repo.dart'
    as _i30;
import '../../app/feat/init_mirror_size_user/domain/use_case/user_init_use_case.dart'
    as _i36;
import '../api/api_consumer.dart' as _i15;
import '../api/app_interceptor.dart' as _i3;
import '../api/dio_consumer.dart' as _i12;
import '../api/index.dart' as _i11;
import 'register_module.dart' as _i39;

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
    gh.lazySingleton<_i13.CustomProductsBaseRemoteDataSource>(() =>
        _i14.CustomProductsRemoteDataSourceImpl(
            client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i16.CustomProductsBaseRepo>(() => _i17.CustomProductRepo(
        baseRemoteDataSource: gh<_i13.CustomProductsBaseRemoteDataSource>()));
    gh.lazySingleton<_i18.GetBodyMeasurementBaseRemoteDataSource>(() =>
        _i19.GetBodyMeasurementRemoteDataSourceImpl(
            client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i20.GetBodyMeasurementBaseRepo>(() =>
        _i21.BodyMeasurementRepo(
            baseRemoteDataSource:
                gh<_i18.GetBodyMeasurementBaseRemoteDataSource>()));
    gh.lazySingleton<_i22.GetBodyMeasurementUseCase>(() =>
        _i22.GetBodyMeasurementUseCase(
            baseRepo: gh<_i20.GetBodyMeasurementBaseRepo>()));
    gh.lazySingleton<_i23.GetCustomProductUseCase>(() =>
        _i23.GetCustomProductUseCase(
            baseRepo: gh<_i16.CustomProductsBaseRepo>()));
    gh.lazySingleton<_i24.GetRecommendationSizeBaseRemoteDataSource>(
        () => _i25.GetRecommendationDataSource(client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i26.GetRecommendtionBaseRepo>(() =>
        _i27.GetRecommendationRepo(
            baseRemoteDataSource:
                gh<_i24.GetRecommendationSizeBaseRemoteDataSource>()));
    gh.lazySingleton<_i28.InitUserBaseRemoteDataSource>(
        () => _i29.InitUserRemoteDataSource(client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i30.InitUserBaseRepo>(() => _i31.InitUserRepo(
        baseRemoteDataSource: gh<_i28.InitUserBaseRemoteDataSource>()));
    gh.lazySingleton<_i32.UploadBodyMeasurementBaseRemoteDataSource>(() =>
        _i33.UploadBodyMeasurementRemoteDataSourceImpl(
            client: gh<_i15.ApiConsumer>()));
    gh.lazySingleton<_i34.UploadUserMeasurementBaseRepo>(() =>
        _i35.UploadBodyMeasurementRepo(
            baseRemoteDataSource:
                gh<_i32.UploadBodyMeasurementBaseRemoteDataSource>()));
    gh.lazySingleton<_i36.UserInitUseCase>(
        () => _i36.UserInitUseCase(baseRepo: gh<_i30.InitUserBaseRepo>()));
    gh.lazySingleton<_i37.GetRecommendationUseCase>(() =>
        _i37.GetRecommendationUseCase(
            baseRepo: gh<_i26.GetRecommendtionBaseRepo>()));
    gh.lazySingleton<_i38.UploadUserBodyMeasurementuseCase>(() =>
        _i38.UploadUserBodyMeasurementuseCase(
            baseRepo: gh<_i34.UploadUserMeasurementBaseRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i39.RegisterModule {}
