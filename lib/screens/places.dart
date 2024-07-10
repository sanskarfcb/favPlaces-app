import 'package:favourite_places/provider/user_places.dart';
import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/widget/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Placesscreen extends ConsumerWidget {
  const Placesscreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userplaceprovider);

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
      body: PlaceList(places: userPlaces),
    );
  }
}
