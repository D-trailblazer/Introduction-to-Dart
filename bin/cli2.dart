import 'dart:io';

const version = 1.0;

void main(List<String> arguments) {
  print("Welcome, I'm Chidubem first dart app.");
  print("Here are the basic things I can do:");
  print("-version to get the current app version");
  print("-search to get search for a newsletter");
  print("-quit to close the app");

  final String input;

  input = stdin.readLineSync() ?? '';

  if (input == "-version") {
    print(version);
  } else if (input == "-search") {
    searchWikipedia();
  } else if (input == "-quit") {
    return;
  } else {}
}

void searchWikipedia() {
  print("enter search terms");
  final String searchTerm;
  searchTerm = stdin.readLineSync() ?? '';
  

  print("$searchTerm is Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos officia");
}
