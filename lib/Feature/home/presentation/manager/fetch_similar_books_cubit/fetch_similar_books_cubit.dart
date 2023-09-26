import 'package:bloc/bloc.dart';
import 'package:bookly/Feature/home/data/repos/home_repo.dart';
import 'package:bookly/Feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_state.dart';


class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookCubitLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((l) {
      emit(
        SimilarBookCubitFailuer(l.errorMessage),
      );
    }, (r) {
      emit(
        SimilarBookCubitSuccess(r),
      );
    });
  }
}
