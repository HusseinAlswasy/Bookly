import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  Failuer(this.errorMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errorMessage);

  factory ServerFailuer.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailuer('Connection timeout with api server');
      case DioErrorType.sendTimeout:
        return ServerFailuer('Send timeout with api server');
      case DioErrorType.receiveTimeout:
        return ServerFailuer('Recive timeout with api server');
      case DioErrorType.badResponse:
        return ServerFailuer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailuer('Request to App is cancel');
      case DioErrorType.unknown:
        return ServerFailuer('Please Try again');
      default:
        return ServerFailuer('Error Try again');
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
