import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repos/home_repo.dart';
import 'package:bookly/core/error/failuers.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchSellerBestBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchSellerBestBook() {
    // TODO: implement fetchSellerBestBook
    throw UnimplementedError();
  }
}
