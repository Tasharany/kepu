import 'package:dartz/dartz.dart';
import 'package:kepu/core/errors/failure.dart';
import 'package:kepu/core/usecase/usecase.dart';
import 'package:kepu/feature/games/domain/model/game.dart';
import 'package:kepu/feature/games/domain/repository/games_repository.dart';

import '../../../../core/params/params.dart';

class GetAllGamesUseCase extends UseCase<List<GameResults>, Params> {
  final GamesRepository repository;

  GetAllGamesUseCase(this.repository);

  @override
  Future<Either<Failure, List<GameResults>>> call(Params params) async {
    return repository.getAllGames(params);
  }
}
