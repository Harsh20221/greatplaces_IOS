import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; //!! Very Imp to import to manage fileconversions and file variable assignment

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? selectedimage; //? A File holds a [path] on which operations can be performed.
void _saveimage() async {
final imagepicker = ImagePicker();
final pickedimage =  await imagepicker.pickImage(source: ImageSource.camera,maxWidth: 600);
if (pickedimage==null){
  return;
}
else {
selectedimage=File(pickedimage.path);} //!! Its very Important to setup a if condition to check null image or else
///!! We will not be able to do this conversion and store the path 
}


  Widget build(BuildContext context) {

///Here we are showing image preview to the user 





    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(  ///!! Make sure to remember border is placed under decoration
            border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2))),
        child: TextButton.icon(
            icon: const Icon(CupertinoIcons.camera), ////* Cupertino Icon
            onPressed: _saveimage,
            label: const Text('Take Picture')));
  }
}
