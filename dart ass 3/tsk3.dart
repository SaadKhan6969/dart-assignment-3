import 'dart:io';

void main() {
  
  Map<String, String> userCredentials = {
    'user1@example.com': 'password123',
    'user2@example.com': 'pass456',
    'user3@example.com': 'secure789',
  };

  bool loggedIn = false;

  while (!loggedIn) {
   
    stdout.write('Enter your email: ');
    String enteredEmail = stdin.readLineSync()!;
    stdout.write('Enter your password: ');
    String enteredPassword = stdin.readLineSync()!;

    if (userCredentials.containsKey(enteredEmail) &&
        userCredentials[enteredEmail] == enteredPassword) {
      loggedIn = true;
      print('User login successful.');
    } else {
      print('Invalid credentials. Please try again.');
    }
  }
}
