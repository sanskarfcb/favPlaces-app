import 'package:favourite_places/provider/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddplaceScreen extends ConsumerStatefulWidget {
  const AddplaceScreen({super.key});

  @override
  ConsumerState<AddplaceScreen> createState() {
    return _AddplaceScreen();
  }
}

class _AddplaceScreen extends ConsumerState<AddplaceScreen> {
  final _titlecontroller = TextEditingController();

  void _savePlace() {
    final enteredTitle = _titlecontroller.text;
    if (enteredTitle.isEmpty) {
      return;
    }
    ref.read(userplaceprovider.notifier).addplace(enteredTitle);

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titlecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'title'),
              controller: _titlecontroller,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _savePlace,
              icon: const Icon(Icons.add),
              label: const Text('Add place'),
            )
          ],
        ),
      ),
    );
  }
}
