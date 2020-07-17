import 'package:geolocator/geolocator.dart';

class Location {
  static Future<Position> getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print('after geolocator');
    } catch (e) {
      print(e);
    }
    return position;
  }
}
