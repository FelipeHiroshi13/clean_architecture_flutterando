import 'package:clean/layers/data/datasources/local/get_cars_by_color_local_datasource.dart';
import 'package:clean/layers/data/dtos/car_dto.dart';
import 'package:clean/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:clean/layers/domain/entities/car_entity.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return a instance of car when passed a any color', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarsByColorRepositoryImp(GetCarsByColorLocalDataSourceImp()));

    var result = useCase('blue');

    late CarEntity expected;

    result.fold((l) => null, (sucess) => expected = sucess);

    expect(expected, isInstanceOf<CarEntity>());
  });

  test('Should return a carro with 4 doors if passed a red car', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarsByColorRepositoryImp(GetCarsByColorLocalDataSourceImp()));

    var result = useCase('red');
    late CarEntity expected;

    result.fold((l) => null, (sucess) => expected = sucess);

    expect(expected.qttyDoors, 4);
  });

  test('Should return a carro with 2 doors if any color expect a red car', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarsByColorRepositoryImp(GetCarsByColorLocalDataSourceImp()));

    var result = useCase('green');

    late CarEntity expected;

    result.fold((l) => null, (sucess) => expected = sucess);

    expect(expected.qttyDoors, 2);
  });
}
