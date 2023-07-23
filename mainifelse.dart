import 'dart:io';

void main() {
  print('Welcome to the Calculator');
  double num1, num2;
  String operator;

  // Read the first number
  stdout.write('Enter the first number: ');
  num1 = double.parse(stdin.readLineSync()!);

  // Read the operator
  stdout.write('Enter an operator (+, -, *, /): ');
  operator = stdin.readLineSync()!;

  // Read the second number
  stdout.write('Enter the second number: ');
  num2 = double.parse(stdin.readLineSync()!);

  double result;

  // Perform the calculation based on the operator
  if (operator == '+') {
    result = num1 + num2;
  } else if (operator == '-') {
    result = num1 - num2;
  } else if (operator == '*') {
    result = num1 * num2;
  } else if (operator == '/') {
    result = num1 / num2;
  } else {
    print('Invalid operator');
    return;
  }

  // Print the result
  print('Result: $result');
}
