import 'package:getxmvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(String data) : status = Status.COMPLETED;
  ApiResponse.error(String message) : status = Status.ERROR;

  @override
  String toString() {
    return 'Status : $status /n Data : $data /n message : $message';
  }
}
