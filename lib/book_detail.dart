import 'package:flutter/material.dart';
//import 'package:simple_bible/home_page.dart';

// import 'package:simple_bible/profile.dart';
// import 'package:simple_bible/services/remote_service.dart';

class BookDetail extends StatefulWidget {
  const BookDetail(bookName, {super.key});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bookname'),
      ),
      body: const Center(
        child: Text('Book Detail'),
      ),
    );
  }
}
