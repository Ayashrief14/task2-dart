import 'dart:io';

void main(){
print("how many numbers do you want to add to your list? : ");
var userList = takeListFromTheUser();
if(userList is List){
  getEvenNumbers(userList);
}
}
takeListFromTheUser(){

  String? lenthOfList = stdin.readLineSync();
  if(lenthOfList!= null){
    try{
      int intLengthOfList = int.parse(lenthOfList);
      if(intLengthOfList > 0 ){
        List listOfNumbers = [];
        for( int index = 0;index < intLengthOfList; index ++){
          print ("please enter the ${index + 1} number :" );
          String? number = stdin.readLineSync();
          if (number != null){
                      int intNumber = int.parse(number);
                      listOfNumbers.add(intNumber);
                      
          }
        }
        return listOfNumbers;
      }
      
    }catch(error){
      print("please check that you are entering integers");
    }
    
  }else{
    print("please enter a vaild number ");
  }
  
}
getEvenNumbers(List userList){
  List evenUserList = userList.where((element) => element%2==0).toList();
  print("the even numbers in this list are $evenUserList");
} 