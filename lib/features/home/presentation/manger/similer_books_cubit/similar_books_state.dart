part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoaded extends SimilarBooksState {}
class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailure(this.errorMessage);
}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel>books;

  SimilarBooksSuccess(this.books);
}
