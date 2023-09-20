import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';
part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBookFailure(failure.errorMessage)),
        (books) => emit(FeaturedBookSuccess(books)));
  }
}
