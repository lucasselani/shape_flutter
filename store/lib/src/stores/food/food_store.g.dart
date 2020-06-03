// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FoodStore on _FoodBase, Store {
  final _$foodsAtom = Atom(name: '_FoodBase.foods');

  @override
  ObservableFuture<ObservableList<Food>> get foods {
    _$foodsAtom.reportRead();
    return super.foods;
  }

  @override
  set foods(ObservableFuture<ObservableList<Food>> value) {
    _$foodsAtom.reportWrite(value, super.foods, () {
      super.foods = value;
    });
  }

  final _$_FoodBaseActionController = ActionController(name: '_FoodBase');

  @override
  Future<dynamic> getFoods() {
    final _$actionInfo =
        _$_FoodBaseActionController.startAction(name: '_FoodBase.getFoods');
    try {
      return super.getFoods();
    } finally {
      _$_FoodBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
foods: ${foods}
    ''';
  }
}
