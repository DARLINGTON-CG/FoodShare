import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class MapPageView extends StatefulWidget {
  const MapPageView({
    Key? key,
    //   required this.currentUserLocation,
  }) : super(key: key);
  // final CurrentUserLocationEntity currentUserLocation;

  @override
  State<MapPageView> createState() => _MapPageViewState();
}

class _MapPageViewState extends State<MapPageView> {
  MapboxMapController? mapController;

   void _onMapCreated(MapboxMapController controller) async {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children:<Widget> [
          MapboxMap(
          
           styleString:  Get.isDarkMode?   MapboxStyles.DARK :  MapboxStyles.LIGHT,
            accessToken: "sk.eyJ1IjoiemFuaXNhbGkiLCJhIjoiY2w0dGx6Y3ZqMGUwZjNjbXppdHNtdGM2ZyJ9.ioqZO7Rydu6onDUC1b00Fg",
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            trackCameraPosition: true,
            initialCameraPosition:const  CameraPosition(
              target:LatLng(1.212, 13.23232),
              zoom: 9.0,
            ),
            
            onMapClick: (_, LatLng latlng) async {
              await mapController?.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    bearing: 10.0,
                    target: LatLng(
                      latlng.latitude,
                      latlng.longitude,
                    ),
                    tilt: 30.0,
                    zoom: 12.0,
                  ),
                ),
              );
            },
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: Icon(Icons.location_city_rounded)
          ),
          // Positioned(
          //   bottom: MediaQuery.of(context).size.height * .18,
          //   right: 10,
          //   child: ZoomInOutWidget(
          //     zoomInCallback: () async => await mapController?.animateCamera(
          //       CameraUpdate.zoomIn(),
          //     ),
          //     zoomOutCallback: () async => await mapController?.animateCamera(
          //       CameraUpdate.zoomOut(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
