import 'package:flutter/material.dart';

import '../../../../../core/widget/button_book_details.dart';

class BookButtonDetails extends StatelessWidget {
  const BookButtonDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonDetails(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(12),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          function: () {},
          text: '19.99\$',
          textStyle: const TextStyle(color: Colors.black),
        ),
        ButtonDetails(
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            padding: const EdgeInsets.all(12),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
          function: () {},
          text: 'Free Preview',
          textStyle: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
