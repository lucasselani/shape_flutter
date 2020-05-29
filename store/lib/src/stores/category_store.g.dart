// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoryStore on _CategoryBase, Store {
  final _$dataAtom = Atom(name: '_CategoryBase.data');

  @override
  List<Category> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(List<Category> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$_CategoryBaseActionController =
      ActionController(name: '_CategoryBase');

  @override
  Future<dynamic> getData() {
    final _$actionInfo = _$_CategoryBaseActionController.startAction(
        name: '_CategoryBase.getData');
    try {
      return super.getData();
    } finally {
      _$_CategoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
