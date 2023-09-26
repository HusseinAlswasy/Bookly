import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  Failuer(this.errorMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errorMessage);

  factory ServerFailuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive timeout with api server');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Request to App is cancel');
      case DioExceptionType.connectionError:
        return ServerFailuer('Please Try again , No Internet connection ');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailuer('No Iternet Connection');
        }
        return ServerFailuer('UnExpected Error, Please Try Again!');
      default:
        return ServerFailuer('No Internet connection , Please Try again');
    }
  }

  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Method not found');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal Server Failuer');
    } else {
      return ServerFailuer('Error Try again');
    }
  }
}
