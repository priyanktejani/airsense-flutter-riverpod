sealed class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;
}

class UnsupportedMethodException extends NetworkException {
  UnsupportedMethodException() : super('Unsupporte method');
}

class InvalidApiKeyException extends NetworkException {
  InvalidApiKeyException() : super('Invalid API key');
}

class NoInternetConnectionException extends NetworkException {
  NoInternetConnectionException() : super('No Internet connection');
}

class NotFoundException extends NetworkException {
  NotFoundException() : super('Not found');
}

class UnknownException extends NetworkException {
  UnknownException() : super('Unknown error occurred');
}