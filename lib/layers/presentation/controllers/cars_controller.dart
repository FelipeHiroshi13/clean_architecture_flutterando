import 'package:clean/layers/domain/entities/car_entity.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController {
  final GetCarsByColorUseCase _getCarsByColorUseCase;
  final SaveFavoriteCarUseCase _saveFavoriteCarUseCase;

  CarController(
    this._getCarsByColorUseCase,
    this._saveFavoriteCarUseCase,
  ) {
    getCarsByColor('red');
  }

  late CarEntity car;

  getCarsByColor(String color) {
    var result = _getCarsByColorUseCase(color);
    result.fold(
      (error) => print(error.toString()),
      (sucess) => car = sucess,
    );
  }

  saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUseCase(car);
  }
}
