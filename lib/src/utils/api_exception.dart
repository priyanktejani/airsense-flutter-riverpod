// Custom exception class for network-related exceptions.
// This serves as a base class for more specific network exception types.
sealed class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;
}

// Exception indicating an unsupported network method.
class UnsupportedMethodException extends NetworkException {
  UnsupportedMethodException() : super('Unsupported method');
}

// Exception indicating an invalid API key.
class InvalidApiKeyException extends NetworkException {
  InvalidApiKeyException() : super('Invalid API key');
}

// Exception indicating no internet connection.
class NoInternetConnectionException extends NetworkException {
  NoInternetConnectionException() : super('No Internet connection');
}

// Exception indicating a resource not found.
class NotFoundException extends NetworkException {
  NotFoundException() : super('Not found');
}

// Exception indicating an unknown error occurred.
class UnknownException extends NetworkException {
  UnknownException() : super('Unknown error occurred');
}
