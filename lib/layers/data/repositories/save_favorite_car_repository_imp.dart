import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/save_favorite_car_repository.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    try {
      return Right(carEntity.value > 0);
    } catch (e) {
      return Left(Exception('repository error'));
    }
  }
}
