import 'package:clean/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String plate;
  int qttyDoors;
  double finalValue;

  CarDto({
    required this.plate,
    required this.qttyDoors,
    required this.finalValue,
  }) : super(
          plate: plate,
          qttyDoors: qttyDoors,
          value: finalValue,
        );

  Map toMap() {
    return {
      'plate': plate,
      'quantityDoors': qttyDoors,
      'finalValue': finalValue,
    };
  }

  static CarDto fromMap(Map map) {
    return CarDto(
      plate: map['plate'],
      qttyDoors: map['quantityDoors'],
      finalValue: map['finalValue'],
    );
  }
}
