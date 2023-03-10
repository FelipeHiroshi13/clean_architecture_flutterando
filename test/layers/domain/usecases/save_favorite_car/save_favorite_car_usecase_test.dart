import 'package:clean/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean/layers/domain/entities/car_entity.dart';
import 'package:clean/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:clean/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should save a car with sucess', () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: 'ABC123', qttyDoors: 2, value: 1);

    var result = await useCase(car);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, true);
  });

  test('Should dont save a car with value less than zero', () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    var car = CarEntity(plate: 'ABC123', qttyDoors: 2, value: 0);

    var result = await useCase(car);

    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, false);
  });
}
