import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.locationServicesDisaled() =
      _LocationServicesDisabled;
  const factory LocationFailure.locationServicesDenied() =
      _LocationServicesDenied;
  const factory LocationFailure.failedToFindLocality() = _FailedToFindLocality;
  const factory LocationFailure.serverError() = _ServerError;
}
