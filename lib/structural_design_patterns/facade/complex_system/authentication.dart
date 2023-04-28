// Authentication subsystem
class Authentication {
  Future<bool> login(String email, String password) async {
    // perform login logic
    await Future<void>.delayed(Duration(seconds: 1));
    return true;
  }

  Future<void> logout() async {
    // perform logout logic
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
