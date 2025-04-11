import 'dart:io';

import 'package:flutter/material.dart';
import 'package:good_places/providers/good_places.dart';
import 'package:good_places/screens/form/components/image_input.dart';
import 'package:provider/provider.dart';

class PlaceForm extends StatefulWidget {
  const PlaceForm({super.key});

  @override
  State<PlaceForm> createState() => _PlaceFormState();
}

class _PlaceFormState extends State<PlaceForm> {
  final _titleControler = TextEditingController();

  File? _pickedImage;

  void _selectImage(File pickedImage) {
    setState(() {
      _pickedImage = pickedImage;
    });
  }

  void _submitForm() {
    if (_titleControler.text.isEmpty || _pickedImage == null) {
      return;
    }

    Provider.of<GoodPlaces>(context, listen: false).addPlace(
      _titleControler.text,
      _pickedImage!,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Local'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  TextField(
                    controller: _titleControler,
                    decoration: InputDecoration(
                      labelText: 'Titulo',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageInput(
                    onSelectImage: _selectImage,
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: _submitForm,
              label: Text('Adicionar', style: TextStyle(color: Colors.black)),
              icon: Icon(Icons.add, color: Colors.black),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: ColorScheme.of(context).onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
