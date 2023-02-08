import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:clean/layers/data/dto/car_dto.dart';

class GetCarsByColorLocalDataSourceImp implements GetCarsByColorDataSource {
  final jsonRed = {
    'plate': 'RED123',
    'quantityDoors': 4,
    'finalValue': 50000.00,
  };

  final jsonAny = {
    'plate': 'ANY123',
    'quantityDoors': 2,
    'finalValue': 25000.00,
  };

  @override
  CarDto call(String color) {
    if (color.contains('red')) {
      return CarDto.fromMap(jsonRed);
    }
    return CarDto.fromMap(jsonAny);
  }
}
