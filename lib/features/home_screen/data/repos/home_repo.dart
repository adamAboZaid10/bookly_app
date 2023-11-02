import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../model/book/book.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBox();
  Future<Either<Failure, List<Book>>> fetchFeatureBox();
}
