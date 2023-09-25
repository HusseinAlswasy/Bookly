import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repos/home_repo.dart';
import 'package:bookly/core/error/failuers.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBook() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try{
          books.add(BookModel.fromJson(item));
        }catch(e){
          print(item);
        }
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchSimilarBooks({required String category})async {
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try{
          books.add(BookModel.fromJson(item));
        }catch(e){
          print(item);
        }
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
