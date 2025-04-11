class PlaceLocation {
  final String latitude;
  final String longitude;
  final String adress;

  PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.adress = '',
  });
}