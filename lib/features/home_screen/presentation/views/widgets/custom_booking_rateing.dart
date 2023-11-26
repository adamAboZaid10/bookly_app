import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start,required this.countreting,required this.rating})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  final num rating;
  final num countreting;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rating',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '$countreting',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
