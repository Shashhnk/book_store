import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/BookModal.dart';

class Backend {
  Future<BookModal> getCategoryBooks(String category) async {
    final url =
        "https://www.googleapis.com/books/v1/volumes?q=subject:$category&filter=ebooks&maxResults=8";
    Uri uri = Uri.parse(url);
    try {
      final response = await http.get(uri);
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        return BookModal.fromJson(data);
      } else {
        return BookModal.fromJson(data);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<BookModal> getSearchedBooks(String search) async {
    final url =
        "https://www.googleapis.com/books/v1/volumes?q=$search&filter=ebooks&maxResults=10";
    Uri uri = Uri.parse(url);
    try {
      final response = await http.get(uri);
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        return BookModal.fromJson(data);
      } else {
        return BookModal.fromJson(data);
      }
    } catch (e) {
      rethrow;
    }
  }
}
