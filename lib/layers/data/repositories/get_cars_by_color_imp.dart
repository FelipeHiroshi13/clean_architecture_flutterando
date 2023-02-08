import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_color_repository.dart';
import '../dto/car_dto.dart';

class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  final GetCarsByColorDataSource _getCarsByColorDataSource;

  GetCarsByColorRepositoryImp(this._getCarsByColorDataSource);

  @override
  CarEntity call(String color) {
    return _getCarsByColorDataSource(color);
  }
}
