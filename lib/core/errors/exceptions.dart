class AuthException implements Exception {
  final String message;
  const AuthException({required this.message});
}
class NetworkException implements Exception {
  final String message;
  const NetworkException({required this.message});
}
class ServerException implements Exception {
  final String message;
  const ServerException({required this.message});
}

//* from data source 