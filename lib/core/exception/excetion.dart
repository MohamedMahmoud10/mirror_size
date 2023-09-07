import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException() : super("Error During Communication");
}

class BadRequestException extends ServerException {
  const BadRequestException() : super("Bad Request");
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException() : super("Unauthorized");
}

class NotFoundException extends ServerException {
  const NotFoundException() : super("Requested Info Not Found");
}

class ConflictException extends ServerException {
  const ConflictException() : super("Conflict Occurred");
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException()
      : super("Internal Server Error");
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException()
      : super("No Internet Connection");
}

class CacheException implements Exception {}
