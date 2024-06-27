void outer(String name, String id) {
    String inner() {
    var nameParts = name.split(' ');
    var firstName = nameParts[0];
    var lastName = nameParts[1];

    return 'Hello Agent ${lastName[0]}.${firstName} your id is $id';
  }

  print(inner());
}
