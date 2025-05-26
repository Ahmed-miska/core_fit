import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  _LocationPickerScreenState createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  final MapController mapController = MapController();
  LocationData? currentLocation;
  LatLng? markerPosition;
  bool isLoading = true;
  double currentZoom = 15.0;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    var location = Location();
    try {
      var userLocation = await location.getLocation();
      setState(() {
        currentLocation = userLocation;
        markerPosition = LatLng(userLocation.latitude!, userLocation.longitude!);
        mapController.move(markerPosition!, currentZoom);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick Location')),
      body: Stack(
        children: [
          // الخريطة
          Positioned.fill(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      initialCenter: markerPosition!,
                      initialZoom: currentZoom,
                      onTap: (tapPosition, LatLng newPosition) {
                        setState(() {
                          markerPosition = newPosition;
                        });
                      },
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: markerPosition!,
                            width: 80.0,
                            height: 80.0,
                            child: const Icon(
                              Icons.location_on,
                              size: 50.0,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
          // أزرار الزوم في أعلى اليمين
          Positioned(
            top: 10,
            right: 10,
            child: Column(
              children: [
                FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    setState(() {
                      currentZoom += 1;
                      mapController.move(markerPosition!, currentZoom);
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 8),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    setState(() {
                      currentZoom -= 1;
                      mapController.move(markerPosition!, currentZoom);
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
          // زر حفظ الموقع في أسفل الشاشة فوق الخريطة
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: AppColors.main,
              ),
              onPressed: () {
                print(markerPosition);
                Navigator.pop(context, markerPosition);
              },
              child: Text('Save Location', style: TextStyles.font16White700),
            ),
          ),
        ],
      ),
    );
  }
}
