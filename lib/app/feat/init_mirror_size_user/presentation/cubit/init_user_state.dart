part of 'init_user_cubit.dart';

@immutable
abstract class InitUserState {}

class InitUserInitial extends InitUserState {}
class InitUserLoadingState extends InitUserState {}
class InitUserLoadedState extends InitUserState {
  final InitUserResponseEntity responseEntity;
  InitUserLoadedState({required this.responseEntity});
}
class InitUserFailState extends InitUserState {
  final String errorState;
  InitUserFailState({required this.errorState});
}
