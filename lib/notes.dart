import 'package:flutter/material.dart';

const int itemCount = 5;

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Note ${index + 1}'),
                leading: const Icon(Icons.note),
                trailing: const Icon(Icons.edit),
                onTap: () {
                  debugPrint('Note ${index + 1}');
                },
              );
            },
          ),
        ),
        // FloatingActionButton(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   backgroundColor: Colors.green,
        //   child: const Icon(Icons.navigation),
        // ),
      ],
    );
  }
}
