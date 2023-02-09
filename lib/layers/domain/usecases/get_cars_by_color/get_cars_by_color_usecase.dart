import 'package:dartz/dartz.dart';
import '../../entities/car_entity.dart';

abstract class GetCarsByColorUseCase {
  Either<Exception, CarEntity> call(String color);
}
