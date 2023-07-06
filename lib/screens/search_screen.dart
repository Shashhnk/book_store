import 'package:book_store/screens/book_details_screen.dart';
import 'package:book_store/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_store/serivces/backend.dart';
import '../modal/BookModal.dart';
import '../widgets/circular_indicator.dart';
import '../widgets/searched_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController controller = TextEditingController();
  bool _isSearchCompleted = false;
  final Backend _backend = Backend();

  void search() {
    if (controller.text.isNotEmpty) {
      _isSearchCompleted = !_isSearchCompleted;
      setState(() {});
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          SearchField(controller: controller, hintText: 'Search a Book'),
          (!_isSearchCompleted)
              ? GestureDetector(
                  onTap: search,
                  child: Container(
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w900)),
                    ),
                  ),
                )
              : Expanded(
                  child: FutureBuilder<BookModal>(
                      future: _backend.getSearchedBooks(controller.text),
                      builder: (context, snapshot) {
                        return ListView.builder(
                            itemCount: snapshot.data?.items?.length,
                            itemBuilder: (BuildContext context, int index) {
                              Items? item = snapshot.data?.items?[index];
                              return (item == null)
                                  ? const CircularIndicator(
                                      height: 300,
                                      width: 200,
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
                                      child: SearchedCard(
                                        item: item,
                                      ));
                            });
                      }),
                ),
        ],
      ),
    );
  }
}
