import 'dart:io';

List<Map<String, dynamic>> users = [];
bool continueAdding = true;

main () {
  cleanScreen();

  while(continueAdding) {
    showInfo();
    String command = stdin.readLineSync() ?? "";

    switch (command.toLowerCase()) {
      case "new" :
        doRegistration();
        break;
      case "list" :
        cleanScreen();
        listUsers();
        waitEnter();
        cleanScreen();
        break;
      case "remove" :
        removeUser();
        break;
      case "exit" :
        exit();
        break;
      default :
        cleanScreen();
        print ("--- INVALID COMMAND ---");
        waitEnter();
        break;
    }
  }
}

// show instructions messages
void showInfo() {
  print("\nSIMPLE USERS REGISTRATION ");
  print("Enter the data requested and type enter to continue.");
  print("Type 'new' to register a new user.");
  print("Type 'list' to see all users.");
  print("Type 'remove' to remove a user.");
  print("Type 'exit' to exit the program.\n\n");
}

// function called to do registration for a new user
void doRegistration() {
  Map<String, dynamic> user = {};

  cleanScreen();
  print('Enter your name:');
  user['name'] = stdin.readLineSync() ?? "Name not inserted";
  cleanScreen();

  print('Enter your age:');
  user['age'] = stdin.readLineSync() ?? "Age not inserted";
  cleanScreen();

  print('Enter your city:');
  user['city'] = stdin.readLineSync() ?? "City not inserted";
  cleanScreen();

  print('Enter your country:');
  user['country'] = stdin.readLineSync() ?? "Country not inserted";
  cleanScreen();

  users.add(user);
  print("User Registered!\n");
  waitEnter();
  cleanScreen();
}

// function called to list all users
void listUsers() {
  print("Users List:\n");
  for(int i = 0; i < users.length; i++) {
    print("User $i - ${users[i]}");
  }
}

// function called to remove a user
void removeUser() {
  print("Enter the number of the user to remove.");
  listUsers();

  int item = int.parse(stdin.readLineSync() ?? "");
  users.removeAt(item);
  cleanScreen();
  print("User removed...");
  waitEnter();
}

void exit() {
  cleanScreen();
  continueAdding = false;
  print("Bye...");
  stdin.readLineSync() ?? "";
  cleanScreen();
}

void waitEnter() {
  print("\nPress ENTER to continue...\n");
  stdin.readLineSync() ?? "";
}

void cleanScreen() { print("\x1B[2J\x1b[0;0H"); }
