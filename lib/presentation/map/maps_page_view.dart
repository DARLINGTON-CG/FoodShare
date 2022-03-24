import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/custom_controller.dart';

class MapPageView extends StatefulWidget {
  const MapPageView({Key? key}) : super(key: key);

  @override
  State<MapPageView> createState() => _MapPageViewState();
}

class _MapPageViewState extends State<MapPageView> with OSMMixinObserver, AutomaticKeepAliveClientMixin {
  late CustomController controller;
  late GlobalKey<ScaffoldState> scaffoldKey;
  Key mapGlobalkey = UniqueKey();
  ValueNotifier<bool> zoomNotifierActivation = ValueNotifier<bool>(false);
  ValueNotifier<bool> visibilityZoomNotifierActivation =
      ValueNotifier<bool>(false);
  ValueNotifier<bool> advPickerNotifierActivation = ValueNotifier<bool>(false);
  ValueNotifier<bool> trackingNotifier = ValueNotifier<bool>(false);
  ValueNotifier<bool> showFab = ValueNotifier<bool>(true);
  // ignore: always_specify_types
  ValueNotifier<GeoPoint?> lastGeoPoint = ValueNotifier(null);
  Timer? timer;
  int x = 0;

  @override
  void initState() {
    super.initState();
    controller = CustomController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(
        latitude: 47.4358055,
        longitude: 8.4737324,
      ),
    );
    controller.addObserver(this);
    scaffoldKey = GlobalKey<ScaffoldState>();
    controller.listenerMapLongTapping.addListener(() async {
      if (controller.listenerMapLongTapping.value != null) {
        final String randNum = Random.secure().nextInt(100).toString();

        await controller.addMarker(
          controller.listenerMapLongTapping.value!,
          markerIcon: MarkerIcon(
            iconWidget: SizedBox.fromSize(
              size: const Size.square(48),
              child: Stack(
                children: <Widget>[
                  const Icon(
                    Icons.store,
                    color: Colors.brown,
                    size: 48,
                  ),
                  Text(
                    randNum,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          //angle: pi / 3,
        );
      }
    });
    controller.listenerMapSingleTapping.addListener(() async {
      if (controller.listenerMapSingleTapping.value != null) {
        if (lastGeoPoint.value != null) {
          controller.removeMarker(lastGeoPoint.value!);
        }
        lastGeoPoint.value = controller.listenerMapSingleTapping.value;
        await controller.addMarker(
          lastGeoPoint.value!,
          markerIcon: MarkerIcon(
            assetMarker: AssetMarker(
              image: const AssetImage("asset/pin.png"),
            ),
          ),
        );
      }
    });
    controller.listenerRegionIsChanging.addListener(() async {
      if (controller.listenerRegionIsChanging.value != null) {
        //fds
      }
    });
  }

  Future<void> mapIsInitialized() async {
    await controller.setZoom(zoomLevel: 12);

    await controller.setMarkerOfStaticPoint(
      id: "line 2",
      markerIcon: const MarkerIcon(
        icon: Icon(
          Icons.train,
          color: Colors.orange,
          size: 48,
        ),
      ),
    );

    await controller.setStaticPosition(
      <GeoPoint>[
        GeoPointWithOrientation(
          latitude: 47.4433594,
          longitude: 8.4680184,
          angle: pi / 4,
        ),
        GeoPointWithOrientation(
          latitude: 47.4517782,
          longitude: 8.4716146,
          angle: pi / 2,
        ),
      ],
      "line 2",
    );

    await controller.addMarker(
      GeoPoint(latitude: 47.442475, longitude: 8.4680389),
      markerIcon: const MarkerIcon(
        icon: Icon(
          Icons.car_repair,
          color: Colors.black45,
          size: 48,
        ),
      ),
    );
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (isReady) {
      await mapIsInitialized();
    }
  }

  @override
  void dispose() {
    if (timer != null && timer!.isActive) {
      timer?.cancel();
    }
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Stack(
      children: <Widget>[
        OSMFlutter(
          controller: controller,
          trackMyPosition: false,
          androidHotReloadSupport: true,
          mapIsLoading: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircularProgressIndicator(color: Colors.black),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Map is Loading..",
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
          onMapIsReady: (bool isReady) {
            if (isReady) {
              //map is ready
            }
          },
          initZoom: 8,
          minZoomLevel: 3,
          maxZoomLevel: 18,
          stepZoom: 1.0,
          userLocationMarker: UserLocationMaker(
            personMarker: const MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: const MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          showContributorBadgeForOSM: true,
          //trackMyPosition: trackingNotifier.value,
          showDefaultInfoWindow: false,
          onLocationChanged: (GeoPoint myLocation) {
            //Location
          },
          onGeoPointClicked: (GeoPoint geoPoint) async {
            if (geoPoint ==
                GeoPoint(latitude: 47.442475, longitude: 8.4680389)) {
              await controller.setMarkerIcon(
                  geoPoint,
                  const MarkerIcon(
                    icon: Icon(
                      Icons.bus_alert,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ));
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  geoPoint.toMap().toString(),
                ),
                action: SnackBarAction(
                  onPressed: () =>
                      ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                  label: "hide",
                ),
              ),
            );
          },
          staticPoints: <StaticPositionGeoPoint>[
            StaticPositionGeoPoint(
              "line 1",
              const MarkerIcon(
                icon: Icon(
                  Icons.train,
                  color: Colors.green,
                  size: 48,
                ),
              ),
              <GeoPoint>[
                GeoPoint(latitude: 47.4333594, longitude: 8.4680184),
                GeoPoint(latitude: 47.4317782, longitude: 8.4716146),
              ],
            ),
          ],
          roadConfiguration: RoadConfiguration(
            startIcon: const MarkerIcon(
              icon: Icon(
                Icons.person,
                size: 64,
                color: Colors.brown,
              ),
            ),
            middleIcon: const MarkerIcon(
              icon: Icon(Icons.location_history_sharp),
            ),
            roadColor: Colors.red,
          ),
          markerOption: MarkerOption(
            defaultMarker: const MarkerIcon(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
                size: 64,
              ),
            ),
            advancedPickerMarker: const MarkerIcon(
              icon: Icon(
                Icons.location_searching,
                color: Colors.green,
                size: 64,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: ValueListenableBuilder<bool>(
            valueListenable: advPickerNotifierActivation,
            builder: (BuildContext ctx, bool visible, Widget? child) {
              return Visibility(
                visible: visible,
                child: AnimatedOpacity(
                  opacity: visible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: child,
                ),
              );
            },
            child: FloatingActionButton(
              key: UniqueKey(),
              child: const Icon(Icons.arrow_forward),
              heroTag: "confirmAdvPicker",
              onPressed: () async {
                advPickerNotifierActivation.value = false;
                // GeoPoint p =
                //     await controller.selectAdvancedPositionPicker();
                ///P
              },
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: ValueListenableBuilder<bool>(
            valueListenable: visibilityZoomNotifierActivation,
            builder: (BuildContext ctx, bool visibility, Widget? child) {
              return Visibility(
                visible: visibility,
                child: child!,
              );
            },
            child: ValueListenableBuilder<bool>(
              valueListenable: zoomNotifierActivation,
              builder: (BuildContext ctx, bool isVisible, Widget? child) {
                return AnimatedOpacity(
                  opacity: isVisible ? 1.0 : 0.0,
                  onEnd: () {
                    visibilityZoomNotifierActivation.value = isVisible;
                  },
                  duration: const Duration(milliseconds: 500),
                  child: child,
                );
              },
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    child: const Icon(Icons.add),
                    onPressed: () async {
                      controller.zoomIn();
                    },
                  ),
                  ElevatedButton(
                    child: const Icon(Icons.remove),
                    onPressed: () async {
                      controller.zoomOut();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
