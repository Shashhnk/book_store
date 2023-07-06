import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String image;
  final String bookName;
  final String authorName;
  const BookCard({
    super.key,
    required this.bookName,
    required this.authorName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4, right: 4),
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            bookName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(authorName),
        ],
      ),
    );
  }
}
