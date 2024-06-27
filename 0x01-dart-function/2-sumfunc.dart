int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    String addition = 'Add ${a} + ${b} = ${add(a, b)}';
    String subtraction = 'Sub ${a} - ${b} = ${sub(a, b)}';

  return '${addition}\n${subtraction}';
}
