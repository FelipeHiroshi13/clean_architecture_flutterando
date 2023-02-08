import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:clean/layers/data/datasources/local/get_cars_by_color_local_datasource.dart';
import 'package:clean/layers/data/repositories/get_cars_by_color_imp.dart';
import 'package:clean/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarsByColorDataSource dataSource = GetCarsByColorLocalDataSourceImp();
  GetCarsByColorRepository repository = GetCarsByColorRepositoryImp(dataSource);
  test('Should return a cor for any color', () {
    var result = repository('any');

    expect(result, isNotNull);
  });
}
