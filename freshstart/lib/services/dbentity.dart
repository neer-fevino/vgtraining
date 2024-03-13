
import 'package:drift/drift.dart';

@DataClassName('TeamFevino')//Data class name 
class TeamFevinos extends Table{  
String get tableName => 'TeamFevino';//for tabel name in db
//Columns

IntColumn get idTeamFevino => integer()();
TextColumn get name => text()();





@override
Set<Column> get primaryKey => {idTeamFevino};
}