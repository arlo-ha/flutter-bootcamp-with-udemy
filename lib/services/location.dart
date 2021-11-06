import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      // Geolocator API로 위도, 경도 호출
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
      // latitude = 37.5665;
      // longitude = 126.9780;
    } catch (e) {
      print(e);
    }
  }
}
