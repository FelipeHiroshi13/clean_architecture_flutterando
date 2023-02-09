import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_color_repository.dart';

class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  final GetCarsByColorDataSource _getCarsByColorDataSource;

  GetCarsByColorRepositoryImp(this._getCarsByColorDataSource);

  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarsByColorDataSource(color);
  }
}
