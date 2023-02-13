import 'package:flutter/material.dart';
import 'package:simple_bible/book_detail.dart';
import 'package:simple_bible/services/remote_service.dart';

// List<Map<String, String>> bookName = [
//   {
//     'section': 'old',
//     'section-title': 'Old Testament',
//     'book': 'Genesis',
//   },
//   {
//     'section-id': 'new',
//     'section-title': 'New Testament',
//     'book': 'Matthew',
//   }
// ];

List bookName = [
  'Genesis',
  'Exodus',
  'Leviticus',
  'Numbers',
  'Deuteronomy',
  'Joshua',
  'Judges',
  'Ruth',
  '1 Samuel',
  '2 Samuel',
  '1 Kings',
  '2 Kings',
  '1 Chronicles',
  '2 Chronicles',
  'Ezra',
  'Nehemiah',
  'Esther',
  'Job',
  'Psalms',
  'Proverbs',
  'Ecclesiastes',
  'Song of Songs',
  'Isaiah',
  'Jeremiah',
  'Lamentations',
  'Ezekiel',
  'Daniel',
  'Hosea',
  'Joel',
  'Amos',
  'Obadiah',
  'Jonah',
  'Micah',
  'Nahum',
  'Habakkuk',
  'Zephaniah',
  'Haggai',
  'Zechariah',
  'Malachi'
];

const int itemCount = 39; // update this to be dyamic

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<BookList> futureBookList;

  @override
  void initState() {
    super.initState();
    futureBookList = fetchBookList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text('BookList.name'),
            leading: const Icon(Icons.my_library_books),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // navigate to details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetail(bookName[index]),
                ),
              );
              // debugPrint(bookName[index]);
            },
          );
        },
      ),
    );
  }
}
