import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greatplaces/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  ///The data type of the List is of Place type , Place is ther data model we created for different places , it is fetched from place.dart
  //? Here we are creating a new class that extends StateNotifier and takes a list of places as a generic type
  UserPlacesNotifier()

      ///This Method we creatd will update the state
      : super(
            const []); //? Here we are initializing the state of the notifier with an empty list of places
  void addPlace(String title , File image) {
    //? This addPlace will be responsible for adding a new place in our App
    final newPlace = Place(
        title:
            title,image: image); //? We are passing the argument of the function title to the title parameter
    state = [newPlace, ...state];
  }
}

final userPlacesNotifier = StateNotifierProvider<UserPlacesNotifier,List<Place>>((ref) =>
    UserPlacesNotifier()); //? Here we are creating a new StateNotifierProvider that takes a reference and returns a new instance of UserPlacesNotifier
