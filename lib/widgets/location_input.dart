import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:location/location.dart';

class LocationInputState extends StatefulWidget {
  const LocationInputState({super.key});

  @override
  State<LocationInputState> createState() => _LocationInputStateState();
}

class _LocationInputStateState extends State<LocationInputState> {

Location ?location; //? This will Store nthe User's Locations
var _isgettinglocation =true; //? This will help us to design a loading screen till the user loaction loads up 

  void getcurrentlocation() async {
  Location location =  Location();

bool _serviceEnabled;
PermissionStatus _permissionGranted;
LocationData _locationData; 

_serviceEnabled = await location.serviceEnabled();
if (!_serviceEnabled) {
  _serviceEnabled = await location.requestService();
  if (!_serviceEnabled) {
    return;
  }
}

_permissionGranted = await location.hasPermission();
if (_permissionGranted == PermissionStatus.denied) {
  _permissionGranted = await location.requestPermission();
  if (_permissionGranted != PermissionStatus.granted) {
    return;
  }
}

_locationData = await location.getLocation();
setState(() {
  _isgettinglocation=false;
});
  }
  Widget build(BuildContext context) {
    Widget previewcontent=  Text('No Location Chosen',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface));
      
        
if(_isgettinglocation==true){
  previewcontent= CircularProgressIndicator(); //****tHIS WILL SHOW THE PROGRESS BAR UNTIL LOCation is not already Loaded */
}


    return Column(
      children: [
        Row(
          children: [ Container(
          decoration: BoxDecoration(border: Border.all()),
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          child: previewcontent ),
            TextButton.icon(
              onPressed: () {
              getcurrentlocation(); //* This is defined here and will be responsible for getting current user locaton 
              },
              label: const Text('Get Current Location'),
              icon: const Icon(CupertinoIcons.location_solid),
            ),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Select on Map '),
              icon: const Icon(CupertinoIcons.map),
            )
        ],
        )
      ],
    );
  }
}
