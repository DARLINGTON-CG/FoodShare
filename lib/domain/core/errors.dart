import 'failures.dart';

class NotAuthenticatedError extends Error
{
  
}

class UnexpectedValueError extends Error {
  // ignore: always_specify_types
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString( "An unrecoverable error encountered.$valueFailure.}") ;
  }
}
