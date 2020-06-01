import 'package:get_it/get_it.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

const tacoPath = 'assets/json/taco.json';
const categoryPath = 'assets/json/categories.json';

void setupDI() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(FoodStore(FoodRepositoryImpl(tacoPath)));
  getIt.registerSingleton(CategoryStore(CategoryRepositoryImpl(categoryPath)));
}
