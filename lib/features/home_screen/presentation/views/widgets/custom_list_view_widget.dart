import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_progress_endicator_widget.dart';
import 'package:bookly_app/features/home_screen/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_item_list_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess)
        {
            return SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView.builder(
              itemCount: state.book.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  CustomItemListViewWidget(url:  state.book[index].volumeInfo.imageLinks.thumbnail,);
              }),
        );
        }else if(state is FeaturedBooksError)
        {
          return  CustomErrorWidget(msgError:state.messageError);
        }else{

          return const CustomProgressIndicatorWidget();
        }
      
      },
    );
  }
}
