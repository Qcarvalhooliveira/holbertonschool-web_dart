class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
