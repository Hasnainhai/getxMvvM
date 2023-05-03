class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message]) : super([message, 'No Internet']);
}

class RequestExceptions extends AppExceptions {
  RequestExceptions([String? message]) : super([message, 'Request time out']);
}

class ServerExceptions extends AppExceptions {
  ServerExceptions([String? message]) : super([message, 'server down']);
}

class TimeoutException extends AppExceptions {
  TimeoutException([String? message]) : super([message, 'Time Out']);
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super([message, 'Invalid Uul']);
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super([message, 'error during communicating with server']);
}
