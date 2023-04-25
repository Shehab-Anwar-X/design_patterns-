abstract class DatabaseConnection {
  const DatabaseConnection._();

  Future<void> executeQuery();

  Future<void> fun1();

  Future<void> fun2();

  Future<void> fun3();

  Future<void> fun4();
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

  @override
  Future<void> fun1() async {
    print('fun1');
  }

  @override
  Future<void> fun2() async {
    print('fun2');
  }

  @override
  Future<void> fun3() async {
    print('fun3');
  }

  @override
  Future<void> fun4() async {
    print('fun4');
  }
}

class AwesomeVirtualRealDatabaseConnectionProxy implements DatabaseConnection {
  final String connectionString;
  late final RealDatabaseConnection _realDatabaseConnection =
      RealDatabaseConnection(
    connectionString: connectionString,
  );

  AwesomeVirtualRealDatabaseConnectionProxy({
    required this.connectionString,
  });

  @override
  Future<void> executeQuery() async {
    await _realDatabaseConnection.executeQuery();
  }

  @override
  Future<void> fun1() async {
    await _realDatabaseConnection.fun1();
  }

  @override
  Future<void> fun2() async {
    await _realDatabaseConnection.fun2();
  }

  @override
  Future<void> fun3() async {
    await _realDatabaseConnection.fun3();
  }

  @override
  Future<void> fun4() async {
    await _realDatabaseConnection.fun4();
  }
}


