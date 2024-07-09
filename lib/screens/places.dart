import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/widget/places_list.dart';
import 'package:flutter/material.dart';

class Placesscreen extends StatelessWidget {
  const Placesscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const AddplaceScreen()),
              );
            },
          ),
        ],
      ),
      body: PlaceList(places: []),
    );
  }
}
