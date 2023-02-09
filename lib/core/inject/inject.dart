import 'package:clean/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:clean/layers/data/datasources/local/get_cars_by_color_local_datasource.dart';
import 'package:clean/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:clean/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:clean/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:clean/layers/presentation/controllers/cars_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasource
    getIt.registerLazySingleton<GetCarsByColorDataSource>(
      () => GetCarsByColorLocalDataSourceImp(),
    );
    // repositories
    getIt.registerLazySingleton<GetCarsByColorRepository>(
      () => GetCarsByColorRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
      () => SaveFavoriteCarRepositoryImp(),
    );
    // usecases
    getIt.registerLazySingleton<GetCarsByColorUseCase>(
      () => GetCarsByColorUseCaseImp(getIt()),
    );
    // controllers
    getIt.registerFactory<CarController>(
      () => CarController(getIt(), getIt()),
    );
  }
}
