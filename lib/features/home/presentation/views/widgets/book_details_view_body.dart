import 'package:flutter/material.dart';

import 'custom_book_item.dart';
import 'custom_detiles_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
   const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17 ),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}

