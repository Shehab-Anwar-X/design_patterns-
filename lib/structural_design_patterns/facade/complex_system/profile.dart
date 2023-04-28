// Profile subsystem
class Profile {
  Future<String> getUsername() async {
    await Future<void>.delayed(Duration(seconds: 1));
    return 'Shehab';
  }

  Future<void> updateProfile(String username, String email) async {
    // update profile logic
    await Future<void>.delayed(Duration(seconds: 1));
  }
}
