import 'dart:io';

void multiplicationTable(int number) {
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print('$number x $i = $result');
  }
}

void main() {

  stdout.write('Enter a number: ');
  int userInput = int.parse(stdin.readLineSync()!);

  multiplicationTable(userInput);
}
