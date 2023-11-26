import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_progress_endicator_widget.dart';
import 'package:bookly_app/features/home_screen/presentation/manger/cubit/newest_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestFeaturedBooksCubit, NewestFeaturedBooksState>(
      builder: (context, state) {
        if (state is NewestFeaturedBooksSuccess) {
          return ListView.builder(
          padding: EdgeInsets.zero,

          //بتاخد الطول بتاع الwidget بتاعتك
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount:state.book.length,
          itemBuilder: (context, index) =>  BestSellerListViewItem(book: state.book[index],),
        );
        }
        else if(state is NewestFeaturedBooksError)
        {
          return CustomErrorWidget(msgError: state.error);
        }
        else{
          return const CustomProgressIndicatorWidget();
        }
        
      },
    );
  }
}
