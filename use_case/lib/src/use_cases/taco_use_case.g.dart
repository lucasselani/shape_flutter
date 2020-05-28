// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taco_use_case.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TacoUseCase on _TacoBase, Store {
  final _$dataAtom = Atom(name: '_TacoBase.data');

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

  final _$_TacoBaseActionController = ActionController(name: '_TacoBase');

  @override
  Future<dynamic> getData() {
    final _$actionInfo =
        _$_TacoBaseActionController.startAction(name: '_TacoBase.getData');
    try {
      return super.getData();
    } finally {
      _$_TacoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
