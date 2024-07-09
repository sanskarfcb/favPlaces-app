import 'package:flutter/material.dart';

class AddplaceScreen extends StatefulWidget {
  const AddplaceScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddplaceScreen();
  }
}

class _AddplaceScreen extends State<AddplaceScreen> {
  final _titlecontroller = TextEditingController();
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
      ), //AppBar
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
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add place'),
            )
          ],
        ),
      ),
    );
  }
}
