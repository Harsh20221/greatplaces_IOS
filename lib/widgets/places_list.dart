import 'package:flutter/material.dart';
import 'package:greatplaces/models/place.dart';
import 'package:greatplaces/screens/places_detail.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({super.key, required this.places});
  final List<Place> places;
  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(child: Text('No Places Saved Yet Please Enter Some'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
          title: Text(places[index].title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => PlaceDetailScreen(place: places[index])));///todo: Make sure to not forget to add this places[index] here          },
    }),
        itemCount: places.length,
        ///! Very Imp To mention Itemcount or else it will give index error
      );
    }
  }
}
