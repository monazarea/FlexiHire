// import 'package:dio/dio.dart';
// import 'package:grad_comp/core/helpers/extensions.dart';
//
// import 'api_constants.dart';
// import 'api_error_model.dart';
//
//
//
// class ApiErrorHandler  {
//   static ApiErrorModel handle(dynamic error) {
//     if (error is DioException) {
//       // dio error so its an error from response of the API or from dio itself
//       switch(error.type){
//         case DioExceptionType.connectionError:
//           return ApiErrorModel(message: "Connection to server failed");
//         case DioExceptionType.cancel:
//           return ApiErrorModel(message: "Request to the server was cancelled");
//         case DioExceptionType.connectionTimeout:
//           return ApiErrorModel(message: "Connection timeout with the server");
//         case DioExceptionType.unknown:
//           return ApiErrorModel(message: "Connection to the server failed due to internet connection");
//         case DioExceptionType.receiveTimeout:
//           return ApiErrorModel(message: "Receive timeout in connection with the server");
//         case DioExceptionType.badResponse:
//           return _handleError(error.response?.data);
//         case DioExceptionType.sendTimeout:
//           return ApiErrorModel(message: "Send timeout in connection with the server");
//         default:
//           return ApiErrorModel(message: "Something went wrong");
//       }
//     } else {
//       // default error
//       return ApiErrorModel(message: "Unknown error occurred");
//     }
//   }
// }
//
// // في ملف api_error_handler.dart
//
// ApiErrorModel _handleError(dynamic data) {
//   Map<String, List<String>>? formattedErrors;
//   if (data['errors'] != null && data['errors'] is Map) {
//     formattedErrors = {};
//     (data['errors'] as Map).forEach((key, value) {
//       if (value is List) {
//         formattedErrors![key] = value.map((e) => e.toString()).toList();
//       } else {
//         formattedErrors![key] = [value.toString()];
//       }
//     });
//   }
//   final message = (data['message'] != null && data['message'].isNotEmpty)
//       ? data['message']
//       : "Invalid credentials or server error.";
//   return ApiErrorModel(
//     message: message,
//     errors: formattedErrors,
//   );
// }
//
// class ApiInternalStatus {
//   static const int SUCCESS = 0;
//   static const int FAILURE = 1;
// }


import 'package:dio/dio.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'api_constants.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: "Connection to the server failed due to internet connection");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "Receive timeout in connection with the server");
        case DioExceptionType.badResponse:
        // --- تم تعديل هذا الجزء ---
        // نمرر الـ response كاملاً للدالة المساعدة
          return _handleError(error.response);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: "Send timeout in connection with the server");
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorModel(message: "Unknown error occurred");
    }
  }
}

// --- تم تعديل هذه الدالة بالكامل ---
ApiErrorModel _handleError(Response? response) {
  // نأخذ كود الخطأ من الـ response
  final int? statusCode = response?.statusCode;
  final dynamic data = response?.data;

  Map<String, List<String>>? formattedErrors;
  if (data != null && data['errors'] != null && data['errors'] is Map) {
    formattedErrors = {};
    (data['errors'] as Map).forEach((key, value) {
      if (value is List) {
        formattedErrors![key] = value.map((e) => e.toString()).toList();
      } else {
        formattedErrors![key] = [value.toString()];
      }
    });
  }

  final message = (data != null && data['message'] != null && data['message'].isNotEmpty)
      ? data['message']
      : "Invalid credentials or server error.";

  return ApiErrorModel(
    message: message,
    errors: formattedErrors,
    // نمرر الكود هنا
    code: statusCode,
  );
}