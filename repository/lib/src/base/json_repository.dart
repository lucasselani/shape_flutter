import 'dart:convert';

import 'package:flutter/services.dart';

abstract class JsonRepository<T> {
  String _json;

  JsonRepository(this._json);

  Future<T> getData();
  T getDataNow();

  dynamic loadJson() async => json != null
      ? await jsonDecode(await rootBundle.loadString(_json))
      : null;
}
