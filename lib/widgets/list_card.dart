import 'package:flutter/material.dart';



class ListCard extends StatelessWidget {
  final String cardTitle;
  const ListCard({
    super.key, required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0,right: 4),
      child: Container(
        width: 150,
        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(8)),
        child:  Center(
            child: Text(
              cardTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
      ),
    );
  }
}
