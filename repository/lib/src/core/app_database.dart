import 'dart:async';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pedantic/pedantic.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;
  Completer<Database> _dbOpenCompleter;

  AppDatabase._();

  Future<Database> get database async {
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      unawaited(_openDatabase());
    }
    return _dbOpenCompleter.future;
  }

  Future _openDatabase() async {
    var dbName = 'shape.db';
    var dbPath;
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      dbPath = join(appDocumentDir.path, dbName);
    } on MissingPluginException catch (_) {
      dbPath = dbName;
    }
    final database = await databaseFactoryIo.openDatabase(dbPath);
    _dbOpenCompleter.complete(database);
  }
}
