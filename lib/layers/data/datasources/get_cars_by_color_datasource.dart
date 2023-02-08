import 'package:clean/layers/data/dto/car_dto.dart';

abstract class GetCarsByColorDataSource {
  CarDto call(String color);
}
