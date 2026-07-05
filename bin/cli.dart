const version = '0.0.1';

void main(List<String> arguments) {
  while (true) {
    if (arguments.isEmpty || arguments.first == "help") {
      printUsage();
    } else if (arguments.first == "version") {
      print("Dartpedia version $version");
      return;
    }
    else if (arguments.first == "search") {
      final args = arguments.length > 1 ? arguments.sublist(1) : null;
      searchWikipedia(args);
    } else {
      printUsage();
    }
  }
}

void searchWikipedia(List<String>? arguments) {
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}
