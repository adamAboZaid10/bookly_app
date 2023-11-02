import 'package:bookly_app/features/home_screen/presentation/views/widgets/similar_list_view_book_details_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like ',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 14,
        ),
        SimilarListViewBookDetailsWidget(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
