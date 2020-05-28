import 'dart:convert';

import 'package:flutter/services.dart';

class JsonRepository {
  String json;

  JsonRepository(this.json);

  dynamic loadJson() async =>
      json != null ? await jsonDecode(await rootBundle.loadString(json)) : null;
}
