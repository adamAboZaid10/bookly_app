import 'package:flutter/material.dart';

import 'custom_item_list_widget.dart';

class SimilarListViewBookDetailsWidget extends StatelessWidget {
  const SimilarListViewBookDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomItemListViewWidget(url: 'https://img.freepik.com/premium-photo/vintage-film-reel-bobin-clapperboard-background-cinema-design_753134-369.jpg?w=1060',);
          }),
    );
  }
}
