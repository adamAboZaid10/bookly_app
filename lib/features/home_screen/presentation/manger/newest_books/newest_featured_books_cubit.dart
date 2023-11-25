import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_featured_books_state.dart';

class NewestFeaturedBooksCubit extends Cubit<NewestFeaturedBooksState> {
  NewestFeaturedBooksCubit() : super(NewestFeaturedBooksInitial());
}
