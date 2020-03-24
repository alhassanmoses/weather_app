import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;
  //Location({this.lat, this.long});

  Future<void> getCurrentLocation() async {
    Position position;

    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
