class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;

  set password(String? password) {
    _password = password;
  }

  bool isValid() {
    String pwd = _password ?? '';
    if (pwd.length < 8 || pwd.length > 16) {
      return false;
    }

    bool hasUppercase = pwd.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = pwd.contains(RegExp(r'[a-z]'));
    bool hasDigit = pwd.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
