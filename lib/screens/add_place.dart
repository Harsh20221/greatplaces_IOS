import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greatplaces/providers/user_places.dart';
import 'package:greatplaces/widgets/image_input.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  ////#Tip-- To create a Stateful Widget first
//# Create A stateless Widget then use the Bulb Icon to Convert  to a Stateful Widget
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {

  final _titleController =
      TextEditingController(); //?Here we are setting up a title controller
  //? A TextEditingController in Flutter is a controller for an editable text field. It allows you to:
//?Read the current value of the text field.
//?Listen to changes in the text field.
//?Modify the text in the text field programmatically.
File ?selectedimage; ///This will help save images , it'll store image location
void saveplace(){
  final enteredtitle=_titleController.text;
  if(enteredtitle.isEmpty||selectedimage==null) return;

ref.read(userPlacesNotifier.notifier).addPlace(enteredtitle,selectedimage!);   ///This'll pass the image fle to add place
Navigator.pop(context);  //!! This is the correct way to write logic to get back to previous screen
///!! Do not write like Navigator.of.pop....

}

@override 
  void dispose() { //? Here we are disposing the controller
    _titleController.dispose();//? Here we are disposing the controller
    super.dispose();   
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Place ')),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: _titleController,
                style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface), //? colorscheme.onBackground is depracted so we use .onSurface Instead
              ),
              const SizedBox(height: 16),

              ///ADD IMAGE LOGIC WILL GO HERE///
              ImageInput(onPickimage: (image) {
                selectedimage=image;
              },),
              ElevatedButton.icon(
                onPressed:saveplace ,
                label: Text('Add place'),///? In icon button child is renamed as label
 
                icon: Icon(CupertinoIcons.placemark),///*CHANGED WITH CUPERTINO ICONS*

                ///This is a icon type
              )
            ],
          )),
    );
  }
}
