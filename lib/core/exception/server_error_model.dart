import 'package:equatable/equatable.dart';

class ServerErrorModel extends Equatable {
  final String message;
  final String status;

  const ServerErrorModel({
    required this.message,
    required this.status,
  });

  factory ServerErrorModel.fromJson(Map<String, dynamic> json) {
    return ServerErrorModel(
      message: json['message'] as String? ?? '', // Handle null value
      status: json['status'] as String? ?? '', // Handle null value
    );
  }

  @override
  List<Object?> get props => [message, status];
}
