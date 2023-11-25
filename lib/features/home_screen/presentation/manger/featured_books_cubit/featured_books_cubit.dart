import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home_screen/data/model/book/book.model.dart';
import 'package:bookly_app/features/home_screen/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;

  Future<void> featchFeaturedBooks ()async
  {
    emit(FeaturedBooksLoading());
   var result = await homeRepo.fetchFeaturedBooks();

   result.fold((failure) {
    emit(FeaturedBooksError(failure.errorMessage));
   }, (books) {
    emit(FeaturedBooksSuccess(books));
   });
  } 
}
