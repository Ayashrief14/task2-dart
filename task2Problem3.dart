import 'dart:io';

void main(){
  print(" Do you want to generate a passowrd? press y or press any other button to exit");
  String? userInput = stdin.readLineSync();
  if(userInput!= null){
    String loweredUserInput = userInput.toLowerCase();
    while(loweredUserInput== "y"){
      List allCharacters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","@","#","\$","%","^","&","*","1","2","3","4","5","6","7","8","9"];
      allCharacters.shuffle();
      List listedPassowrd = allCharacters.getRange(0, 8).toList();
      print("your suggested passowrd: ");
      print(listedPassowrd.join(""));
      print("Do you want another passowrd?press y or press any other button to exit");
      userInput = stdin.readLineSync();
      if(userInput!= null){
      loweredUserInput = userInput.toLowerCase();
      }

    }
  }
}