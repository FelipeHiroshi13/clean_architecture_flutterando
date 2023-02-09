import 'package:clean/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarsByColorDataSource {
  Either<Exception, CarDto> call(String color);
}
