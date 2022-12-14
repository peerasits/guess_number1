import 'dart:math';

import 'package:guess_number/hello.dart';

class Game{
  var answer;
  var guessTime;


  Game(){
    this.answer = Random().nextInt(100)+1;
    guessTime = 0;
  }

  printAnswer(){
    //print("คำตอบคือ $answer");
  }

  int doGuess(var num){

    if (num > answer) {
      print("║ ➜ $num is too high! ▲");
      printSeperate();
      guessTime++;
      return 0;
    } else if (num < answer) {
      print("║ ➜ $num is too low! ▼");
      printSeperate();
      guessTime++;
      return 0;
    } else {
      ++guessTime;
      print("║ ➜ $num is correct ❤, Total guesses : $guessTime");
      printSeperate();
      return 1;

    }
  }
}