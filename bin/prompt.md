Challenge 1: Code an interactive cli app
So this  is what i want to achieve: 

When I run the app with the wrong arguments, it gives me a prompt asking if i want to try again or quit
On quit, the application closes
On try again, it restarts the processes

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}
what happens when i type in dart run search?

our main function has a control flow that checks for it 
if search is pass
the input block contains a function that creates a new string variable. 
this variable nests a tenary operation that checks if the arguments passed are more than two. If they are, it stores the second argument by argument.sublist(1) and if the lenght isn't greater than 1 it returns null.

The variable is then passed as a parameter to the search...function

the working of the search function;
The role of the search function is to guide the user into entering the right values as well as printing the entered value.

It works this way;
it takes in arguments; which can also be a string
It checks from the value returned by the main function
Through a control flow, if the value returned is empty or null
it prompts the user to enter a correct value

But first it stores the value in a variable, so it can be printed later-on
the variable gets updated by variable=getinputfunction
and since our code also accepts null input for safety
we add the coexeial operatpr to the input function getinputfunction() ?? ''
to return an empty string should the user not type in anything

However if the right values are entered initially it prints it in the else by joining them into a string
