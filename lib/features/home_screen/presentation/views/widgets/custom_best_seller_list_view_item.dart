import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home_screen/data/model/book/book.model.dart';
import 'package:bookly_app/features/home_screen/presentation/views/widgets/custom_item_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_booking_rateing.dart';

class BestSellerListViewItem extends StatelessWidget {
   BestSellerListViewItem({Key? key,required this.book}) : super(key: key);

  Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: MediaQuery.of(context).size.height * .15,
              child: AspectRatio(
                //           width  / height
                aspectRatio: 2.6 / 4,
                child:CustomItemListViewWidget(url: book.volumeInfo.imageLinks.thumbnail) ,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      book.volumeInfo.description!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle18
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                        rating: book.volumeInfo.averageRating ??0,
                        countreting: book.volumeInfo.ratingsCount??0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
