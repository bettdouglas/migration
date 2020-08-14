import 'package:angel_migration_runner/src/migration_runner/cli.dart';
import 'package:angel_migration_runner/src/migration_runner/postgres/runner.dart';
import 'package:postgres/postgres.dart';
import 'todo.dart';

var migrationRunner = PostgresMigrationRunner(
  PostgreSQLConnection(
    '127.0.0.1',
    5432,
    'postgres',
    username: 'postgres',
    password: 'Mula1000',
  ),
  migrations: [
    UserMigration(),
    TodoMigration(),
  ],
);

main(List<String> args) => runMigrations(migrationRunner, args);
