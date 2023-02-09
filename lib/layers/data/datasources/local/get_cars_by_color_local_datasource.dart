import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:clean/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

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
  Either<Exception, CarDto> call(String color) {
    try {
      if (color.contains('red')) {
        return Right(CarDto.fromMap(jsonRed));
      }
      return Right(CarDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Datasource error'));
    }
  }
}
