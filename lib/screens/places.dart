/* import 'package:greatplaces/screens/add_place.dart'; */
import 'package:greatplaces/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Your Places '),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))]),
      body:const  PlaceListScreen(places: []),
    );
  }
}
