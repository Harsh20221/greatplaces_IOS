import 'package:flutter/material.dart';
import 'package:greatplaces/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place}); //? Required places data is already pushed from placelist file's Navigator function method
  final Place place; ///? This is where the pushed data is stored 
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
    body: Stack(children: [Image.file(place.image,fit: BoxFit.cover,height: double.infinity,width: double.infinity,)],),); //? We recieve image from earlier screen's Navigator Method and this will get stored in the place list here and will get displayed  
  } 
}
