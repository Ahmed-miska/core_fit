import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'api_error_model.dart';

// تعريف مصادر الأخطاء المحتملة
enum DataSource {
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError,
}

// أكواد الاستجابة من السيرفر
class ResponseCode {
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int internalServerError = 500;
  static const int apiLogicError = 422;

  // أكواد الأخطاء المحلية
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}

// رسائل الأخطاء بناءً على نوع الخطأ
class ResponseMessage {
  static const String noContent = ApiErrors.noContent;
  static const String badRequest = ApiErrors.badRequestError;
  static const String unauthorized = ApiErrors.unauthorizedError;
  static const String forbidden = ApiErrors.forbiddenError;
  static const String internalServerError = ApiErrors.internalServerError;
  static const String notFound = ApiErrors.notFoundError;
  static const String connectTimeout = ApiErrors.timeoutError;
  static const String cancel = ApiErrors.defaultError;
  static const String receiveTimeout = ApiErrors.timeoutError;
  static const String sendTimeout = ApiErrors.timeoutError;
  static const String cacheError = ApiErrors.cacheError;
  static const String noInternetConnection = ApiErrors.noInternetError;
  static const String defaultError = ApiErrors.defaultError;
}

// امتداد لتحويل DataSource إلى ApiErrorModel
extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    return ApiErrorModel(
      message: _getErrorMessage(),
    );
  }

  String _getErrorMessage() {
    switch (this) {
      case DataSource.noContent:
        return ResponseMessage.noContent;
      case DataSource.badRequest:
        return ResponseMessage.badRequest;
      case DataSource.forbidden:
        return ResponseMessage.forbidden;
      case DataSource.unauthorized:
        return ResponseMessage.unauthorized;
      case DataSource.notFound:
        return ResponseMessage.notFound;
      case DataSource.internalServerError:
        return ResponseMessage.internalServerError;
      case DataSource.connectTimeout:
        return ResponseMessage.connectTimeout;
      case DataSource.cancel:
        return ResponseMessage.cancel;
      case DataSource.receiveTimeout:
        return ResponseMessage.receiveTimeout;
      case DataSource.sendTimeout:
        return ResponseMessage.sendTimeout;
      case DataSource.cacheError:
        return ResponseMessage.cacheError;
      case DataSource.noInternetConnection:
        return ResponseMessage.noInternetConnection;
      case DataSource.defaultError:
        return ResponseMessage.defaultError;
    }
  }
}

// كلاس لمعالجة الأخطاء
class ErrorHandler implements Exception {
  late final ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    apiErrorModel = (error is DioException) ? _handleError(error) : DataSource.defaultError.getFailure();
  }
}

// دالة لمعالجة أخطاء Dio
ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      return error.response?.data != null ? ApiErrorModel.fromJson(error.response!.data) : DataSource.defaultError.getFailure();
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
    case DioExceptionType.badCertificate:
      return DataSource.defaultError.getFailure();
  }
}

// كلاس لتحديد حالة الاستجابة الداخلية
class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
