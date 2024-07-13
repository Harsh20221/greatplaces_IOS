import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greatplaces/models/place.dart';
import 'package:greatplaces/screens/places_detail.dart';
import 'package:greatplaces/screens/add_place.dart';
///* This file contains the lower list portion of hone screen where added places will get displayed\\\

class PlaceListScreen extends StatelessWidget {
  const PlaceListScreen({super.key, required this.places});
  final List<Place> places;
  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(child: Text('No Places Saved Yet Please Enter Some'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) => CupertinoListTile(  ///*CHANGED WITH CUPERTINO STYLE LIST TILE*
        leading: CircleAvatar(radius: 26,backgroundImage: FileImage(places[index].image)),
          title: Text(places[index].title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => PlaceDetailScreen(place: places[index])));///todo: Make sure to not forget to add this places[index] here 
                /// In the Above line we this navigator is Navigating to other screen while simoultanously pushing data to  place parameter of placedetail screen 
    }),
        itemCount: places.length,
        ///! Very Imp To mention Itemcount or else it will give index error
      );
    }
  }
}
