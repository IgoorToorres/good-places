import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:good_places/models/place/place.dart';

class GoodPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      location: 'null',
      image: image,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
