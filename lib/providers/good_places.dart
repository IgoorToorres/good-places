import 'package:flutter/material.dart';
import 'package:good_places/models/place/place.dart';

class GoodPlaces with ChangeNotifier{
  final List<Place> _items = [];

  List<Place> get items{
    return [..._items];
  }

  int get itemsCount{
    return _items.length;
  }

  Place itemByIndex(int index){
    return _items[index];
  }
}