import 'package:favourite_places/models/places.dart';
import 'package:flutter/material.dart';

class PlacedetailScreen extends StatelessWidget {
  const PlacedetailScreen({super.key, required this.places});

  final place places;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(places.title),
      ),
      body: Center(
        child: Text(
          places.title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
