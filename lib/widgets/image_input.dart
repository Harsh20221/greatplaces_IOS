import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 250,
            child: TextButton.icon(
                icon: const Icon(CupertinoIcons.camera), ////* Cupertino Icon
                onPressed: () {},
                label: const Text('Take Picture')));
  }
}
