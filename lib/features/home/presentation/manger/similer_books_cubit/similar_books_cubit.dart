import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoaded());
    var result = await homeRepo.fetchSimilardBooks(category: category);
    result.fold((failure) => emit(SimilarBooksFailure(failure.errorMessage)),
            (books) => emit(SimilarBooksSuccess(books)));
  }
}
