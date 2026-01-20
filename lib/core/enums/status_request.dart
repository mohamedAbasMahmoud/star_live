import 'package:flutter/cupertino.dart';

enum StatusRequest {
  initial,
  loading,
  success,
  error,
  noConnection,
  noData,
}

extension StatusRequestViewExtension on StatusRequest {
  bool isInitial() => this == StatusRequest.initial;
}

extension StatusRequestExtension on StatusRequest {
  bool isLoading() => this == StatusRequest.loading;
}

extension StatusRequestView on StatusRequest {
  bool isSuccess() => this == StatusRequest.success;
}

extension StatusRequestError on StatusRequest {
  bool isError() => this == StatusRequest.error;
}

extension StatusRequestNoData on StatusRequest {
  bool isNoData() => this == StatusRequest.noData;
}

extension StatusRequestNoConnection on StatusRequest {
  bool isNoConnection() => this == StatusRequest.noConnection;
}

// extension AddNameToContext on BuildContext {
//   String name() => "Hello";
// }

// void main(List<String> args) {
//   BuildContext context = BuildContext();
//   context.name();
// }
