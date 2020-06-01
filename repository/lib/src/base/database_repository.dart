import 'package:repository/repository.dart';
import 'package:repository/src/core/app_database.dart';
import 'package:sembast/sembast.dart';

abstract class DatabaseRepository implements Repository {
  String folderName;
  StoreRef _folder;

  DatabaseRepository(this.folderName) {
    _folder = intMapStoreFactory.store(folderName);
  }

  get _db async => await AppDatabase.instance.database;

  Future<int> insertDb(Map<String, dynamic> data) async =>
      await _folder.add(await _db, data);

  Future<int> deleteDb(int id) async {
    final finder = Finder(filter: Filter.byKey(id));
    return await _folder.delete(await _db, finder: finder);
  }

  Future deleteAllDb() async => await _folder.delete(await _db);

  Future<List> listDb() async {
    var data = await _folder.find(await _db);
    return data.map((d) => d.value).toList();
  }
}
