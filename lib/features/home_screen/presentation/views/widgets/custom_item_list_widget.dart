import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomItemListViewWidget extends StatelessWidget {
  const CustomItemListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AspectRatio(
          //           width  / height
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsData.test,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
