import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/features/home/presentation/manger/featured_book_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_loading_indecator.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        context.go(AppRouter.kBookDetailsView,
                            extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        imageURL: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            " ",
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndiecator();
        }
      },
    );
  }
}
