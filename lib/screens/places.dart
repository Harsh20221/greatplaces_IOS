/* import 'package:greatplaces/screens/add_place.dart'; */
import 'package:greatplaces/providers/user_places.dart';
import 'package:greatplaces/screens/add_place.dart';
import 'package:greatplaces/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greatplaces/providers/user_places.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  Widget build(BuildContext context,WidgetRef ref) {
   final userPlaces= ref.watch(userPlacesNotifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Your Places '), actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) =>  AddPlaceScreen(), ///HERE WE ARE NAVIGATING TO THE NEW SCREEN ONCE THIS BUTTON HAS PRESSED
              )); 
            },
            icon: const Icon(Icons.add))
      ]),
      body:  PlaceListScreen(places: userPlaces)
    );
  }
}
