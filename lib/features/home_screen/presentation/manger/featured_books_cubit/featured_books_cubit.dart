import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_screen/data/model/book/book.model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
