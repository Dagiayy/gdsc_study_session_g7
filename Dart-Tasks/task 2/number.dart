void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];

  // Test the functions
  print('Maximum number: ${findMaximum(numbers)}');
  print('Minimum number: ${findMinimum(numbers)}');
  print('Sum of numbers: ${calculateSum(numbers)}');
  print('Average of numbers: ${calculateAverage(numbers)}');
}

int findMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty.');
  }

  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int findMinimum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty.');
  }

  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty.');
  }

  int sum = calculateSum(numbers);
  return sum / numbers.length;
}
