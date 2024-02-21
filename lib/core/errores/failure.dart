import 'package:dio/dio.dart';

abstract class Failure {
  final String error;

  Failure(this.error);
}

class ServerFailure extends Failure {
  ServerFailure(super.error);

  factory ServerFailure.fromDioError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.badResponse:
      return  ServerFailure.fromResponse(exception.response!.statusCode!, exception.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.connectionError:
        return ServerFailure('connection with api is timeout');
      case DioExceptionType.unknown:
        return ServerFailure('connection with api is timeout');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if(statusCode == 404)
      {
        return ServerFailure('Request is not found, please try later ');
      }
    else if (statusCode == 500)
      {
        return ServerFailure('there is problem with server, please try later ');
      }
    else if (statusCode == 400 || statusCode == 401 ||statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }
    else{
      return ServerFailure('ther is error , please try again');

    }
  }
}
