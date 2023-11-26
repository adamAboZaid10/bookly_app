part of 'newest_featured_books_cubit.dart';

sealed class NewestFeaturedBooksState extends Equatable {
  const NewestFeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class NewestFeaturedBooksInitial extends NewestFeaturedBooksState {}
final class NewestFeaturedBooksLoading extends NewestFeaturedBooksState {}
final class NewestFeaturedBooksError extends NewestFeaturedBooksState 
{
  final String error;
  const NewestFeaturedBooksError(this.error);
}
final class NewestFeaturedBooksSuccess extends NewestFeaturedBooksState 
{
  final List<Book> book;
  const NewestFeaturedBooksSuccess(this.book);
}
