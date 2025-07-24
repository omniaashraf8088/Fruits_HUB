class Failure {
  final String message;

  Failure({required this.message});
}

class ServiceError extends Error {
  final String message;
  ServiceError(this.message);
}
