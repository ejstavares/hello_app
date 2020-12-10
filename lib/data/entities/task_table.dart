import 'package:moor/moor.dart';

@DataClassName('TblTask')
class TaskTable extends Table {
  IntColumn get id => integer().autoIncrement().call();
  TextColumn get description => text().nullable()();
  TextColumn get title => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}