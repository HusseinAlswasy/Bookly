import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/error/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchSellerBestBook();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
