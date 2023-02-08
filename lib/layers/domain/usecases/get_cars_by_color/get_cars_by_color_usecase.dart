import '../../entities/car_entity.dart';

abstract class GetCarsByColorUseCase {
  CarEntity call(String color);
}
