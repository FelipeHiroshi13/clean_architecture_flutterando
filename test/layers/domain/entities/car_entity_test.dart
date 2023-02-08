import 'package:clean/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Should entity not null', () {
    CarEntity carEntity =
        CarEntity(plate: 'ABC123', qttyDoors: 2, value: 10000);

    expect(carEntity, isNotNull);
  });

  test('Should quantity of doors be 2', () {
    CarEntity carEntity =
        CarEntity(plate: 'ABC123', qttyDoors: 2, value: 10000);

    expect(carEntity.qttyDoors, 2);
  });

  test('Should realValue be 2000 if cars has 2 doors', () {
    CarEntity carEntity = CarEntity(plate: 'ABC123', qttyDoors: 2, value: 1000);

    expect(carEntity.realValue, 2000);
  });

  test('Should realValue be 0 if cars hasnt doors', () {
    CarEntity carEntity = CarEntity(plate: 'ABC123', qttyDoors: 0, value: 1000);

    expect(carEntity.realValue, 0);
  });

  test('Should realValue be 1000', () {
    CarEntity carEntity = CarEntity(plate: 'ABC123', qttyDoors: 2, value: 500);

    carEntity.setFavoriteCarValue();

    expect(carEntity.value, 1000);
  });
}
