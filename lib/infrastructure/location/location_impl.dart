
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';
import '../../domain/location/location_failure.dart';
import '../../domain/location/location_interface.dart';
import 'package:geocoding/geocoding.dart';

@LazySingleton(as: LocationInterface)
class LocationImpl implements LocationInterface {
  LocationImpl();

  @override
  Future<Either<LocationFailure, Map<String, dynamic>>>
      determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(const LocationFailure.locationServicesDisaled());
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const LocationFailure.locationServicesDenied());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const LocationFailure.locationServicesDenied());
    }
    try {
      final Position position = await Geolocator.getCurrentPosition();
      final List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placemarks.first.locality != null &&
          placemarks.first.administrativeArea != null) {
        final String location =
            "${placemarks.first.locality},${placemarks.first.administrativeArea}";
        return right({
          "location": "${position.latitude},${position.longitude}",
          "locationName": location
        });
      } else {
        return left(const LocationFailure.failedToFindLocality());
      }
    } catch (e) {
      return left(const LocationFailure.serverError());
    }
  }

  @override
  double getDistanceBetween(
      {required String otherUserCordinates,
      required String currentUserCordinates}) {
 
    final double usersLatitude =
        double.parse(currentUserCordinates.split(",")[0]);
    final double usersLongitude =
        double.parse(currentUserCordinates.split(",")[1]);
 
       final double othersLatitude =
        double.parse(otherUserCordinates.split(",")[0]);
    final double othersLongitude =
        double.parse(otherUserCordinates.split(",")[1]);
   

    double distanceInMeters = Geolocator.distanceBetween(
        usersLatitude, usersLongitude, othersLatitude, othersLongitude);
    return distanceInMeters;
  }
}
