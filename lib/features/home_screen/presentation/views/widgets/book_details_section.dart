import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_button_details.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_booking_rateing.dart';
import 'custom_item_list_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: const SizedBox(height: 270, child: CustomItemListViewWidget(url: 'https://img.freepik.com/premium-photo/vintage-film-reel-bobin-clapperboard-background-cinema-design_753134-369.jpg?w=1060',)),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: 2,
          countreting: 2,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 40,
        ),
        const BookButtonDetails(),
      ],
    );
  }
}
