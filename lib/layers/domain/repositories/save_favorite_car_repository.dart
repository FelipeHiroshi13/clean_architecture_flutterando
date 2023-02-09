import 'package:dartz/dartz.dart';

import '../entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}
