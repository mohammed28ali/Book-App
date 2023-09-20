import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                imageURL: 'https://miro.medium.com/v2/resize:fit:828/format:webp/1*m5eYW0Qgmdse1bpkqbsPLQ.png',
              ),
            );
          }),
    );
  }
}
