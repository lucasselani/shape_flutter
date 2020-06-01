import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/src/api/async.dart';
import 'package:repository/repository.dart';
import 'package:shape/core/store_observer.dart';
import 'package:shape/ui/screen/foods/foods_item.dart';
import 'package:store/store.dart';

class FoodsObserver extends StoreObserver<List<Food>> {
  final FoodStore store = GetIt.I<FoodStore>();

  @override
  Widget builder(List<Food> data) => ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, int index) {
        return FoodsItem(food: data[index]);
      });

  @override
  void fetch() => store.getFoods;

  @override
  ObservableFuture<List<Food>> get future => store.foods;
}
