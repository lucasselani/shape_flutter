import 'package:database/export.dart';
import 'package:get_it/get_it.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

const tacoPath = 'assets/json/taco.json';
const categoryPath = 'assets/json/categories.json';
const planBoxName = 'plans';

void setupDB() async {
  await Database.initialize();
}

void setupDI() async {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(FoodStore(FoodRepositoryImpl(tacoPath)));
  getIt.registerSingleton(CategoryStore(CategoryRepositoryImpl(categoryPath)));

  var provider = PlanProvider(planBoxName);
  await provider.openBox();
  getIt.registerSingleton(provider);
}
