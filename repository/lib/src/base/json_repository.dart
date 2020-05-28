import 'dart:convert';

import 'package:flutter/services.dart';

abstract class JsonRepository<T> {
  String json;

  JsonRepository(this.json);

  Future<T> getData();
  T getDataNow();

  dynamic loadJson() async =>
      json != null ? await jsonDecode(await rootBundle.loadString(json)) : null;
}
