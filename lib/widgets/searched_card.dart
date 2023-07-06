import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modal/BookModal.dart';

class SearchedCard extends StatelessWidget {
  final Items item;
  const SearchedCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage(item.volumeInfo!.imageLinks!.thumbnail!),
                    fit: BoxFit.fill)),
          ),
        ),
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
              Text('Language : ${item.volumeInfo!.language ?? "Not Available"}',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
