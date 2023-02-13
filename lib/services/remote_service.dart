import 'dart:async';
import 'dart:convert';

import 'package:simple_bible/model/books.dart';
import 'package:http/http.dart' as http;

Map<String, String> get headers => {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "api-key": "372daf431ce330db5f872e62f12c5792",
    };

Future<BookList> fetchBookList() async {
  final response = await http.get(
      Uri.parse(
          'https://api.scripture.api.bible/v1/bibles/9879dbb7cfe39e4d-04/books?include-chapters=true'),
      // Send authorization headers to the backend.
      headers: headers);
  final responseJson = jsonDecode(response.body);

  return BookList.fromJson(responseJson);
}

class BookList {
  BookList({
    required this.id,
    required this.bibleId,
    required this.abbreviation,
    required this.name,
    required this.nameLong,
    required this.chapters,
  });

  String id;
  String bibleId;
  String abbreviation;
  String name;
  String nameLong;
  List<Chapter> chapters;

  factory BookList.fromJson(Map<String, dynamic> json) => BookList(
        id: json["id"],
        bibleId: json["bibleId"],
        abbreviation: json["abbreviation"],
        name: json["name"],
        nameLong: json["nameLong"],
        chapters: List<Chapter>.from(
            json["chapters"].map((x) => Chapter.fromJson(x))),
      );
}
