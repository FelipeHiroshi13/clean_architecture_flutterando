import 'package:clean/layers/domain/entities/car_entity.dart';
import 'package:clean/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:dartz/dartz.dart';

import 'save_favorite_car_usecase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    carEntity.setFavoriteCarValue();
    return await _saveFavoriteCarRepository(carEntity);
  }
}
