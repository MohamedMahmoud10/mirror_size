part of 'render_camera_and_ui_cubit.dart';

@immutable
abstract class RenderCameraAndUiState {}

class RenderCameraAndUiInitial extends RenderCameraAndUiState {}
class RenderCameraAndUiLoadedState extends RenderCameraAndUiState {}
class RenderCameraInitCameraState extends RenderCameraAndUiState {}
class RenderTlitState extends RenderCameraAndUiState {}
class RenderCameraAndUiFailState extends RenderCameraAndUiState {
  final String errorState ;
  RenderCameraAndUiFailState({required this.errorState});

}
class CaptureInProgressState extends RenderCameraAndUiState {
  final int ?secondsLeft;
  CaptureInProgressState({required this.secondsLeft});
}
