import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  ////#Tip-- To create a Stateful Widget first
//# Create A stateless Widget then use the Bulb Icon to Convert  to a Stateful Widget
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController =
      TextEditingController(); //?Here we are setting up a title controller
  //? A TextEditingController in Flutter is a controller for an editable text field. It allows you to:
//?Read the current value of the text field.
//?Listen to changes in the text field.
//?Modify the text in the text field programmatically.

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Place ')),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: _titleController,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text('Add place'), ///? In icon button child is renamed as label
            icon: Icon(Icons.place), ///This is a icon type 
          )
        ],
      )),
    );
  }
}
