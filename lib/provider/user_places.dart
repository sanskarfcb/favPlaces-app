import 'package:favourite_places/models/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserplaceNotifier extends StateNotifier<List<place>> {
  UserplaceNotifier() : super([]);

  void addplace(String title) {
    final newplace = place(title: title);

    state = [...state, newplace];
  }
}

final userplaceprovider = StateNotifierProvider<UserplaceNotifier, List<place>>(
    (ref) => UserplaceNotifier());
