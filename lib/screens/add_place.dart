import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget{  ////#Tip-- To create a Stateful Widget first
//# Create A stateless Widget then use the Bulb Icon to Convert  to a Stateful Widget
  const AddPlaceScreen ({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  Widget build(BuildContext context ){
    return Scaffold(appBar:AppBar(title: const Text('Add New Place ')));}
}

