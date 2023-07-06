import 'package:book_store/modal/BookModal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsScreen extends StatelessWidget {
  final Items item;
  const BookDetailsScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            item.volumeInfo!.imageLinks!.thumbnail!),
                        fit: BoxFit.fill)),
              ),
            ),
            const Divider(),
            Container(
              height: 180,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name : ${item.volumeInfo!.title!}',
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                      'Author : ${item.volumeInfo!.authors?[0] ?? "Not Available"}',
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Text(
                      'Publisher : ${item.volumeInfo!.publisher ?? "Not Available"}',
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Text(
                      'Published Year : ${item.volumeInfo!.publishedDate ?? "Not Available"}',
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Text(
                      'Language : ${item.volumeInfo!.language ?? "Not Available"}',
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            const Divider(),
            Text('Description',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w900))),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.volumeInfo!.description!),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse(item.accessInfo!.webReaderLink!),
                      mode: LaunchMode.inAppWebView);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "READ",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                      ),
                      const Icon(
                        Icons.menu_book,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
