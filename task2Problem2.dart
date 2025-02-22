import 'dart:io';
void main(){
  // taking the input from the user 
  print("please enter the word you want to check ");
  String? userInput = stdin.readLineSync();
  if(userInput!= null){
    String loweredUserInput = userInput.toLowerCase().trim();
    isPalindrome(loweredUserInput);
  }else{
    print("please enter a word");
  }
  // function to determine is the word palindrome or not
}
isPalindrome(String userInput){
  List<String> listedUserInput = [];
  for(int i = 0 ; i < userInput.length; i++){
    listedUserInput.add(userInput[i]);
  }
  List reversedListedUserInput = listedUserInput.reversed.toList();
  for(int index = 0 ; index < listedUserInput.length;index++){
    if(reversedListedUserInput[index]!= listedUserInput[index]){
      print("this word is not palindrome");
      break;
    }else if(index == (listedUserInput.length -1) ){
      print("this word is palidrome ");
    }
  }
  }
  
  
