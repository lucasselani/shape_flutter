import 'package:get_it/get_it.dart';
import 'package:repository/repository.dart';
import 'package:store/store.dart';

const tacoPath = 'assets/json/taco_general.json';
const categoryPath = 'assets/json/taco_categories.json';

void setupDI() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton(TacoStore(TacoRepository(tacoPath)));
  getIt.registerSingleton(CategoryStore(CategoryRepository(categoryPath)));
}
