import 'package:bookly_app/features/home_screen/presentation/views/widgets/similar_books_sections.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //allow to use Widget Expanded in Scroll
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
