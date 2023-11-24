import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with api servers');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with api servers');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with api servers');
      case DioExceptionType.badCertificate:
        return ServerFailure('connection timeout with api servers');
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespone(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request to api servers was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error with api servers');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error , Please Try again');
      default:
        return ServerFailure('Opps There was an Error , Please try again');
    }
  }

  factory ServerFailure.fromRespone(int? statusCode, dynamic reponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(reponse['error']['massage']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found, Please try again');
    } else if (statusCode == 500) {
      return ServerFailure('internal Server error, Please try again');
    } else {
      return ServerFailure('Opps There was an Error , Please try again');
    }
  }
}
