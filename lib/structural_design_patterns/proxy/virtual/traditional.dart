abstract class DatabaseConnection {
  const DatabaseConnection._();

  Future<void> executeQuery();
}

class RealDatabaseConnection implements DatabaseConnection {
  final String connectionString;

  RealDatabaseConnection({required this.connectionString}) {
    // Perform expensive setup here, such as opening a network connection or
    // establishing a database connection
    print('Opening database connection to $connectionString...');
    // Simulate a long setup time
    Future.delayed(Duration(seconds: 2), () {
      print('Database connection opened');
    });
  }

  @override
  Future<void> executeQuery() async {
    // Execute the query on the real database connection
    print('Executing query on real database connection');
  }
}

class TraditionalVirtualRealDatabaseConnectionProxy
    implements DatabaseConnection {
  final String connectionString;
  RealDatabaseConnection? _realDatabaseConnection;

  TraditionalVirtualRealDatabaseConnectionProxy({
    required this.connectionString,
  });

  @override
  Future<void> executeQuery() async {
    _realDatabaseConnection ??= RealDatabaseConnection(
      connectionString: connectionString,
    );
    await _realDatabaseConnection!.executeQuery();
  }
}
