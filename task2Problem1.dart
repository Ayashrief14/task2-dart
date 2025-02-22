import 'dart:io';
void main(){ 
  // making a list to store number from 1 to 100
    List numbers = [];
  for(int i = 1 ; i <= 100 ; i ++){
    numbers.add(i);
  }
  // making the order of the list random and then getting the first number 
  numbers.shuffle();
  int programNumber = numbers.first;

  // fuction to check  the relation between user number and program number 
  checkTheNumber(int userNumber){
  if(userNumber == programNumber){
    print("congratulation you are exactly right!");
    return true;
  }else if(userNumber > programNumber ){    
    if((userNumber-programNumber)<= 10){
      print("so close , go a little bit down!");
    }else {
      print("too high!");
    }
    return false; 
  }else if(programNumber>userNumber){
    if((programNumber-userNumber)<=10){
      print("so close, go a little bit up ");
    }else{
      print("too low!");
    }
    return false;
  }
}
//  taking the input from the user and giving him 7 attempts 
  int i = 0;
  while(i<7){
    print(" attempt number ${i + 1} please enter a random number from 1 to 100: ");
      String? userNumber = stdin.readLineSync();
      if(userNumber!= null){
          try{
            int intuserNumber = int.parse(userNumber);
             if(checkTheNumber(intuserNumber)!){
             break;
        }
        if(i == 6){
          print(" sorry , your attempts have been ended , the number was $programNumber");
        }
        i++;

      }catch(error){
        print("please enter a vaild number");
      }
      }else{
        print("please enter a number");
      }

  }

}
