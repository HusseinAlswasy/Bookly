import 'package:bloc/bloc.dart';
import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoading());
    var result = await homeRepo.fetchNewestBook();
    result.fold(
      (failuer) {
        emit(
          NewestBooksCubitFailuer(failuer.errorMessage),
        );
      },
      (books) {
        emit(
          NewestBooksCubitSuccess(books),
        );
      },
    );
  }
}
