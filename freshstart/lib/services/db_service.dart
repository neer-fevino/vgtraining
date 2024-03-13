import 'dart:io';


import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:freshstart/services/dbentity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

//import entities



part "db_service.g.dart";



@DriftDatabase(  
  tables: [  
  //entities
  TeamFevinos
  ])
class DB extends _$DB{
  DB() : super(_openConnection());
  
  
  @override
  int get schemaVersion=>1; 


// WRITE QUIERIES HERE
// returns the generated id
Future<int> insertFevinoMember(TeamFevinosCompanion entry) {
  return into(teamFevinos).insert(entry);
}

}



LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
  // put the database file, called db.sqlite here, into the documents folder
  // for your app.
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(path.join(dbFolder.path, 'db.sqlite'));
  return NativeDatabase(file);
  });
}
class DbService  {
  DB db = DB();
}
