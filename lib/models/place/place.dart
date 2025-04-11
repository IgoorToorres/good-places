import 'dart:io';

import 'package:good_places/models/location/place_location.dart';

class Place {
  final String id;
  final String title;
  // final PlaceLocation location;
  final String location;
  final File image;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}