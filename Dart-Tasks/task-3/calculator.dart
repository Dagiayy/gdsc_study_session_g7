class Calculator {
  double add(double a, double b) => a + b;

  double subtract(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) {
    if (b == 0) {
      throw FormatException('Cannot divide by zero');
    }
    return a / b;
  }
}

Future<void> main() async {
  try {
    final calculator = Calculator();

    // Assume the numbers
    double num1 = 10.0;
    double num2 = 0;

    // Perform calculations based on assumed values
    double result;

    // Assume the operation
    String operation = '/';

    switch (operation) {
      case '+':
        result = calculator.add(num1, num2);
        break;
      case '-':
        result = calculator.subtract(num1, num2);
        break;
      case '*':
        result = calculator.multiply(num1, num2);
        break;
      case '/':
        result = calculator.divide(num1, num2);
        break;
      default:
        print('Invalid operation');
        return;
    }

    // Delay for 5 seconds
    await Future.delayed(Duration(seconds: 5));

    // Print the result after the delay
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}
