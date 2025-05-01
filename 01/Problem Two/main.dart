import 'dart:io';
/*
   Problem two
    
    Write a function in Dart that checks whether a given number is a prime number or not.

 */

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  if (num == 2) {
    return true;
  }

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter a number to check if it's prime:");
  String? input = stdin.readLineSync();
  if (input != null) {
    int num = int.parse(input);
    print("The number $num is prime: ${isPrime(num)}");
  } else {
    print("Invalid input!"); 
  }
}
