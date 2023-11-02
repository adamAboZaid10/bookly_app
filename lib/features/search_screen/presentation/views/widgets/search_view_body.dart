import 'package:bookly_app/features/home_screen/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_text_field_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomTextFieldSearch(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Expanded(child: BestSellerListView()),
        ),
      ],
    );
  }
}
