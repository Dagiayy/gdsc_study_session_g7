void main(){
  List <int> numo = [1,8,3,3,4,45,5,69,10,39,91,10];
  print("The maximum number is: ${findMaximum(numo)}");
  print("The minimum number is: ${findMinimum(numo)}");
  print("The overall sum is: ${calculateSum(numo)}");
  print("The Average is: ${calculateAverage(numo)}");
}

int findMaximum(List <int> numbers){ //calculates the maximum number
  int maxi = numbers[0];
  for(int number in numbers){
    if (number>maxi){
      maxi = number;
    }
  }
  return maxi;
}

int findMinimum(List <int> numbers){ //calculates the minimum number
  int mini = numbers[0];
  for(int number in numbers){
    if(number<mini){
      mini = number;
    }
  }
  return mini;
}

int calculateSum(List <int> numbers){ // calculates the overall sum
  int sum = 0;
  for(int number in numbers){
    sum+=number;
  }
  return sum;
}

double calculateAverage(List <int> numbers){ //calculates the average of the list
  return calculateSum(numbers) / numbers.length;
}