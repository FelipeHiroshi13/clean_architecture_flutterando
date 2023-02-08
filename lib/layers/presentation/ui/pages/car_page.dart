import 'package:clean/layers/data/datasources/local/get_cars_by_color_local_datasource.dart';
import 'package:clean/layers/data/repositories/get_cars_by_color_imp.dart';
import 'package:clean/layers/data/repositories/save_favorite_car.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:clean/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:clean/layers/presentation/controllers/cars_controller.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  CarPage({super.key});

  CarController controller = CarController(
    GetCarsByColorUseCaseImp(
        GetCarsByColorRepositoryImp(GetCarsByColorLocalDataSourceImp())),
    SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(controller.car.plate),
      ),
    );
  }
}
