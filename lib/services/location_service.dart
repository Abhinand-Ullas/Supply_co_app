import 'package:geolocator/geolocator.dart';

class LocationService {
  /// Requests permission and gets the current location
  static Future<Position> getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // 1. Check if the physical GPS is turned on
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // You can return null or throw an error to show a dialog later
      return Future.error('Location services are disabled.');
    }

    // 2. Check current app permissions
    permission = await Geolocator.checkPermission();
    
    // 3. Request permission if denied but not permanently
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }
    
    // 4. Handle permanently denied permissions
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
    } 

// 5. If everything is approved, get the coordinates!
return await Geolocator.getCurrentPosition(
  locationSettings: const LocationSettings(
    accuracy: LocationAccuracy.high,
  ),
);

  }
}