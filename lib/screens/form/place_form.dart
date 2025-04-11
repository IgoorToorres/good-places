import 'package:flutter/material.dart';
import 'package:good_places/screens/form/components/image_input.dart';

class PlaceForm extends StatelessWidget {
  const PlaceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Local'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Titulo',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInput(),
                  ],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Adicionar', style: TextStyle(color: Colors.black)),
                icon: Icon(Icons.add, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: ColorScheme.of(context).onSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
