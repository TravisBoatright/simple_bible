// To parse this JSON data, do
//
//     final books = booksFromJson(jsonString);

import 'dart:convert';

Books booksFromJson(String str) => Books.fromJson(json.decode(str));

String booksToJson(Books data) => json.encode(data.toJson());

class Books {
  Books({
    required this.data,
  });

  List<BookList> data;

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        data:
            List<BookList>.from(json["data"].map((x) => BookList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
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

  Map<String, dynamic> toJson() => {
        "id": id,
        "bibleId": bibleId,
        "abbreviation": abbreviation,
        "name": name,
        "nameLong": nameLong,
        "chapters": List<dynamic>.from(chapters.map((x) => x.toJson())),
      };
}

class Chapter {
  Chapter({
    required this.id,
    required this.bibleId,
    required this.number,
    required this.bookId,
    required this.reference,
  });

  String id;
  String bibleId;
  String number;
  String bookId;
  String reference;

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        id: json["id"],
        bibleId: json["bibleId"],
        number: json["number"],
        bookId: json["bookId"],
        reference: json["reference"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bibleId": bibleId,
        "number": number,
        "bookId": bookId,
        "reference": reference,
      };
}
