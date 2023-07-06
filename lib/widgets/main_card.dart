import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/book_home.png'), opacity: .2),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Hello,',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32),
            ),
          ),
          const Text(
            'which book suits your',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 18),
          ),
          const Text(
            'current mood?',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 18),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),

        ],
      ),
    );
  }
}
