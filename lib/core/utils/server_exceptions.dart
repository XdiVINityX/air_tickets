import 'package:air_tickets/core/utils/app_exception.dart';
import 'package:dio/dio.dart';

class ServerException extends AppException {
  factory ServerException([DioException? dioException]) {
    String message;
    switch (dioException?.type) {
      case DioExceptionType.connectionTimeout:
        message = 'Соединение прервано';
      case DioExceptionType.sendTimeout:
        message = 'Время отправки вышло';
      case DioExceptionType.receiveTimeout:
        message = 'Время получения вышло';
      case DioExceptionType.badCertificate:
        message = 'Неверный сертификат';
      case DioExceptionType.badResponse:
        message = _handleBadResponse(dioException);
      case DioExceptionType.cancel:
        message = 'Отмена';
      case DioExceptionType.connectionError:
        message = 'Ошибка соединения';
      case DioExceptionType.unknown:
        message = 'Неизвестная ошибка';
      default:
        message = 'Неизвестная ошибка';
    }

    return ServerException._(dioException, message: message);
  }

  ServerException._(
    DioException? exception, {
    required super.message,
  }) : super(
          internalMessage:
              '${exception?.response?.data ?? exception?.message ?? exception?.error}',
        );

  static String _handleBadResponse(DioException? dioException) {
    switch (dioException?.response?.statusCode) {
      case 400:
        return 'Неверный запрос';
      case 404:
        return 'Запрошенный ресурс не существует';
      case 500:
        return 'На сервере произошла ошибка';
      default:
        return 'Неверный ответ';
    }
  }
}
