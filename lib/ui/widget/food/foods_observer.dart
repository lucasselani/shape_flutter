import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';
import 'package:shape/core/store_observer.dart';
import 'package:shape/ui/widget/general/search_bar.dart';
import 'package:store/store.dart';

import 'foods_item.dart';

class FoodsObserver extends StoreObserver<ObservableList<Food>> {
  final FoodStore store = GetIt.I<FoodStore>();
  final isPicking;

  FoodsObserver({this.isPicking = false});

  @override
  Widget builder(ObservableList<Food> foods) => SafeArea(
        child: Column(
          children: <Widget>[
            SearchBar(onSearch: _filterList),
            Expanded(
                child: ListView.builder(
                    itemCount: foods.length,
                    itemBuilder: (_, int index) =>
                        FoodsItem(food: foods[index], isPicking: isPicking))),
          ],
        ),
      );

  @override
  void fetch() => store.getFoods();

  @override
  ObservableFuture<ObservableList<Food>> get future => store.foods;

  void _filterList(String text) => store.getFilteredFoods(text);
}
