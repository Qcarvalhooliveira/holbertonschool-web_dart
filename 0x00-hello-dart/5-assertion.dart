void main(List<String> args) {
  var score = int.parse(args[0]);
  assert(score >= 80,
      'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
  print('You Passed');
}
