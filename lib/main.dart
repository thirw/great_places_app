import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/greate_places.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
import './screens/places_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatePlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          PlacesDetailScreen.routeName: (ctx) => PlacesDetailScreen(),
        },
      ),
    );
  }
}
