// import 'package:factorial_and_prime_checking/factorial_and_prime_checking.dart'
// as factorial_and_prime_checking;

import 'dart:io';

//CHECKING FACTORIAL OF USER ENTERED NUMBER
void main() {
  stdout.write('Enter a number to get Factorial');
  String? input = stdin.readLineSync();
  int enteredNumber = int.parse(input!);

  int fact = 1;
  for (int i = 1; i <= enteredNumber; i++) {
    fact = fact * i;
  }
  print('$fact');

//CHECKING A NUMBER IS PRIME OR NOT
  stdout.write('Enter a number to check prime or not ');
  String userEnteredNumber = stdin.readLineSync()!;

  int number = int.tryParse(userEnteredNumber) ?? 0;

  bool isPrime = true;

  if (number == 0) {
    isPrime = false;
    print('Dont enter Zero');
  } else if (number <= 1) {
    isPrime = false;
    print("Please enter above 1");
  } else {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
  }

  if (isPrime) {
    print('YES, You entered Prime Number');
  } else {
    print('NOT a prime Number');
  }
}






// void main() {
  // stdout.write('Enter a number ');
  // String input = stdin.readLineSync()!;

  // int number = int.tryParse(input) ?? 0;

  // bool isPrime = true;

  // if (number == 0) {
  //   isPrime = false;
  //   print('Dont enter Zero');
  // } else if (number <= 1) {
  //   isPrime = false;
  //   print("Please enter above 1");
  // } else {
  //   for (int i = 2; i < number; i++) {
  //     if (number % i == 0) {
  //       isPrime = false;
  //       break;
  //     }
  //   }
  // }

  // if (isPrime) {
  //   print('YES, You entered Prime Number');
  // } else {
  //   print('NOT a prime Number');
  // }
// }
