

import 'package:dartz/dartz.dart';
import 'package:kepu/core/errors/failure.dart';
import 'package:kepu/core/network/network.dart';
import 'package:kepu/core/params/params.dart';
import 'package:kepu/feature/search/domain/model/search_results_model.dart';
import 'package:kepu/feature/search/domain/repository/search_repository.dart';

import '../../../../core/errors/exceptions.dart';
import '../datasources/remote/search_data_source.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  SearchRepositoryImpl({required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<SearchResultsModel>>> searchGames(SearchParams params) async{
    try{
      final remoteData = await remoteDataSource.searchGames(params);
      final results = remoteData.results?.map((e) => e).toList();
      return Right(results ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

}