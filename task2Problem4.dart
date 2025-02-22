import 'dart:io';

void main(){
  print("how many numbers do you want to add to the first list ? "); 
  
      var  firstList = takeListFromTheUser();
      if (firstList is List){
        print("how many numbers do you want to add to the second list ? "); 
        var secondList = takeListFromTheUser();
        if(secondList is List){
          commonBetweenLists(firstList, secondList);
          
        }else{
          print("error");
        }   
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

commonBetweenLists(List firstList, List secondList){
  Set commonNumbers = {};
  for(int index = 0 ; index < firstList.length;index++){
    if(secondList.contains(firstList[index])){
      commonNumbers.add(firstList[index]);
    }
  }
  
  print("the common numbers are $commonNumbers");
}