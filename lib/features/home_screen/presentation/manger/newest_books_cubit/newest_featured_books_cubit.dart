import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_screen/data/model/book/book.model.dart';
import 'package:bookly_app/features/home_screen/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_featured_books_state.dart';

class NewestFeaturedBooksCubit extends Cubit<NewestFeaturedBooksState> {
  NewestFeaturedBooksCubit(this.homeRepo) : super(NewestFeaturedBooksInitial());
  HomeRepo homeRepo;

  Future<void> newestFeaturedBooks()async
  {
    emit(NewestFeaturedBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestFeaturedBooksError(failure.errorMessage));
    } , (book) {
      emit( NewestFeaturedBooksSuccess(book));
    });
  }
}
