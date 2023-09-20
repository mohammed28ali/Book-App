part of 'featured_book_cubit.dart';

@immutable
abstract class FeaturedBookState {}

class FeaturedBookInitial extends FeaturedBookState {}
class FeaturedBookLoading extends FeaturedBookState {}
class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;
  FeaturedBookFailure(this.errorMessage);
}
class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;
  FeaturedBookSuccess(this.books);
}

