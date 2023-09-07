import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/entity/init_user_response_entity.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/use_case/user_init_use_case.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/const/cache_strings.dart';
import 'package:mirror_size/core/di/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'init_user_state.dart';

class InitUserCubit extends Cubit<InitUserState> {
  InitUserCubit({required this.useCase}) : super(InitUserInitial());
  final UserInitUseCase useCase;

  Future<void> initUser() async {
    try {
      emit(InitUserLoadingState());
      final result = await useCase.call(NoParams());
      result.fold(
        (l) {
          debugPrint('Error: ${l.message}');
          emit(
            InitUserFailState(
              errorState: l.message.toString(),
            ),
          );
        },
        (r) =>cacheUserIdAndEmitNewState(r),
      );
    } catch (e) {
      debugPrint('Error making network request: $e');
    }
  }

  Future<void> cacheUserIdAndEmitNewState(
    InitUserResponseEntity responseEntity,
  ) async {
    final cacheUserId = await di<SharedPreferences>()
        .setString(CacheString.userIdKey, responseEntity.userId);
    debugPrint('The Cache User Id Is $cacheUserId');
    emit(
      InitUserLoadedState(responseEntity: responseEntity),
    );
  }
}
