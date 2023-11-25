part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksError extends FeaturedBooksState {
  final String messageError;
  const FeaturedBooksError(this.messageError);
}
final class FeaturedBooksSuccess extends FeaturedBooksState 
{
  final List<Book> book;
 const FeaturedBooksSuccess(this.book);
}
