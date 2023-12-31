import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_screen/data/model/book/book.model.dart';
import 'package:bookly_app/features/home_screen/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{

  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async{
   try{
    var data =
     await apiService.get(
      endPoint: 'volumes?Fultering=free-ebooks&Sorting=newest&q=subject:programming');

      List<Book> books =[];
      
      for(var item in data['items']){
        books.add(Book.fromJson(item));
      }
      return Right(books);
   }catch(e){

    if(e is DioException){
      return left(ServerFailure.fromDioError(e));
    }
    return Left(ServerFailure(e.toString()));
  
   }
  }

  
  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Fultering=free-ebooks&q=subject:Programming');

      List<Book> books = [];

      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}