import 'package:clean/layers/presentation/controllers/cars_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  CarPage({super.key});

  CarController controller = GetIt.I.get<CarController>();

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
