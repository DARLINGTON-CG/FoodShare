import 'package:dartz/dartz.dart';

import 'location_failure.dart';

abstract class LocationInterface {
  Future<Either<LocationFailure, Map<String, dynamic>>> determinePosition();
  double getDistanceBetween(
      {required String otherUserCordinates,
      required String currentUserCordinates});
}
