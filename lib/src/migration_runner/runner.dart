import 'dart:async';

import 'package:angel_migration_runner/src/migration/migration.dart';


abstract class MigrationRunner {
  void addMigration(Migration migration);

  Future up();

  Future rollback();

  Future reset();

  Future close();
}
