import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @LazySingleton()
  Dio get dio => Dio();
  @preResolve
Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
