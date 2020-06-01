import 'dart:convert';

import 'package:flutter/services.dart';

abstract class JsonLoader {
  String _json;

  JsonLoader(this._json);

  dynamic loadJson() async => _json != null
      ? await jsonDecode(await rootBundle.loadString(_json))
      : null;
}
