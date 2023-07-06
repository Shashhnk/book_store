import 'package:book_store/modal/BookModal.dart';
import 'package:book_store/screens/book_details_screen.dart';
import 'package:book_store/widgets/circular_indicator.dart';
import 'package:flutter/material.dart';

import '../serivces/backend.dart';
import '../widgets/book_card.dart';
import '../widgets/list_card.dart';
import '../widgets/main_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Backend _backend = Backend();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: MainCard(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.only(right: 190),
                  child: const ListCard(
                    cardTitle: 'Adventure',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
                height: 220,
                child: FutureBuilder<BookModal>(
                    future: _backend.getCategoryBooks('Adventure'),
                    builder: (context, snapshot) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.items?.length,
                          itemBuilder: (BuildContext context, int index) {
                            Items? item = snapshot.data?.items?[index];
                            return (item == null)
                                ? CircularIndicator(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailsScreen(
                                                    item: item,
                                                  )));
                                    },
                                    child: BookCard(
                                        bookName: item.volumeInfo!.title!,
                                        authorName:
                                            item.volumeInfo!.authors![0],
                                        image: item.volumeInfo!.imageLinks!
                                            .thumbnail!));
                          });
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.only(right: 190),
                  child: const ListCard(
                    cardTitle: 'Fantasy',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
                height: 220,
                child: FutureBuilder<BookModal>(
                    future: _backend.getCategoryBooks('Fantasy'),
                    builder: (context, snapshot) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.items?.length,
                          itemBuilder: (BuildContext context, int index) {
                            Items? item = snapshot.data?.items?[index];
                            return (item == null)
                                ? CircularIndicator(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailsScreen(
                                                    item: item,
                                                  )));
                                    },
                                    child: BookCard(
                                        bookName: item.volumeInfo!.title!,
                                        authorName:
                                            item.volumeInfo!.authors![0],
                                        image: item.volumeInfo!.imageLinks!
                                            .thumbnail!));
                          });
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.only(right: 190),
                  child: const ListCard(
                    cardTitle: 'Action',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
                height: 220,
                child: FutureBuilder<BookModal>(
                    future: _backend.getCategoryBooks('Information'),
                    builder: (context, snapshot) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.items?.length,
                          itemBuilder: (BuildContext context, int index) {
                            Items? item = snapshot.data?.items?[index];
                            return (item == null)
                                ? CircularIndicator(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailsScreen(
                                                    item: item,
                                                  )));
                                    },
                                    child: BookCard(
                                        bookName: item.volumeInfo!.title!,
                                        authorName:
                                            item.volumeInfo!.authors![0],
                                        image: item.volumeInfo!.imageLinks!
                                            .thumbnail!));
                          });
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.only(right: 190),
                  child: const ListCard(
                    cardTitle: 'Romance',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4, left: 4, bottom: 4),
                height: 220,
                child: FutureBuilder<BookModal>(
                    future: _backend.getCategoryBooks('Romance'),
                    builder: (context, snapshot) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.items?.length,
                          itemBuilder: (BuildContext context, int index) {
                            Items? item = snapshot.data?.items?[index];
                            return (item == null)
                                ? CircularIndicator(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailsScreen(
                                                    item: item,
                                                  )));
                                    },
                                    child: BookCard(
                                        bookName: item.volumeInfo!.title!,
                                        authorName:
                                            item.volumeInfo!.authors![0],
                                        image: item.volumeInfo!.imageLinks!
                                            .thumbnail!));
                          });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
