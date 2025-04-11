import 'package:flutter/material.dart';
import 'package:good_places/providers/good_places.dart';
import 'package:good_places/screens/form/place_form.dart';
import 'package:good_places/screens/home/places_list_screen.dart';
import 'package:good_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GoodPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
            onSecondary: Colors.amber,
            onPrimary: Colors.indigo,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            
          ),
          useMaterial3: true,
        ),
        home: PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM : (ctx) => PlaceForm(),
        },
      ),
    );
  }
}
