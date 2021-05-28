import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  //db name file and version
  static final _dbname = "person.db";
  static final _dbversion = 1;

  //table name
  static final tableName = "myTable";

  //columns
  static final columnID = "id";
  static final columnName = "name";

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  //db initialisation
  static Database _database;
  Future<Database> get database async{
    if(_database != null) // if db already exists
         return _database;

    _database = await _initDatabase(); // if db does not exist the initiate it
         return _database;
  }

  //initiate db function
  _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbname);
    return await openDatabase(path, version: _dbversion, onCreate: _onCreate);
  }

  // creating table
  Future _onCreate(Database db, int version) {
    db.execute(
      '''
        CREATE TABLE $tableName (
          $columnID INTEGER PRIMARY KEY,
          $columnName TEXT NOT NULL )
      '''
    );
  }

  //insert operation
  Future<int> insert(Map<String, dynamic> row) async{
    Database db = await instance.database;
    return await db.insert(tableName, row);
  }

  //query all rows operation
  Future<List<Map<String, dynamic>>> queryallrows() async{
    Database db = await instance.database;
    return await db.query(tableName);
  }

  //update operation
  Future<int> update(Map<String, dynamic> row) async{
    Database db = await instance.database;
    int id = row[columnID];
    return await db.update(tableName, row, where: '$columnID = ?', whereArgs: [id]);
  }

  //delete operation
  Future<int> delete(int id) async{
    Database db = await instance.database;
    return await db.delete(tableName, where: '$columnID = ?', whereArgs: [id]);
  }

}