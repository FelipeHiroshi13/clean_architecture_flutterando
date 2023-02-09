import 'package:dartz/dartz.dart';
import '../entities/car_entity.dart';

abstract class GetCarsByColorRepository {
  Either<Exception, CarEntity> call(String color);
}
