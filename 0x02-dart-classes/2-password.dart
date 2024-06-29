class Password {
  String password = "";

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigit = password.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
