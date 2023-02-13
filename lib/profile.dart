import 'package:flutter/material.dart';

List bookName = [
  'Matthew',
  'Mark',
  'Luke',
  'John',
  'Acts',
  'Romans',
  '1 Corinthians',
  '2 Corinthians',
  'Galatians',
  'Ephesians',
  'Philippians',
  'Colossians',
  '1 Thessalonians',
  '2 Thessalonians',
  '1 Timothy',
  '2 Timothy',
  'Titus',
  'Philemon',
  'Hebrews',
  'James',
  '1 Peter',
  '2 Peter',
  '1 John',
  '2 John',
  '3 John',
  'Jude',
  'Revelation'
];

const int itemCount = 27;

class NewTestPage extends StatelessWidget {
  const NewTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(bookName[index]),
            leading: const Icon(Icons.my_library_books),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              debugPrint(bookName[index]);
            },
          );
        },
      ),
    );
  }
}
