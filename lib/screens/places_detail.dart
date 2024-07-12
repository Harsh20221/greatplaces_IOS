import 'package:flutter/material.dart';
import 'package:greatplaces/models/place.dart';

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({super.key, required this.place});
  final Place place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        place.title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Theme.of(context).colorScheme.onSurface),
      )),
    );
  }
}
