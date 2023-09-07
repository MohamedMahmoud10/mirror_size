import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mirror_size/app/app.dart';
import 'package:mirror_size/app/bloc_opserver.dart';
import 'package:mirror_size/core/di/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await configureDependencies();


  runApp(const MyApp());
}
