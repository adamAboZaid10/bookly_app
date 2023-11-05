import 'package:flutter/material.dart';

import 'custom_best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,

      //بتاخد الطول بتاع الwidget بتاعتك
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
    );
  }
}
