import 'dart:io';
import 'package:guess_number/game.dart';
void printSeperate(){
  print("╟────────────────────────────────────────────");
}

void main() {
  //var playAgain = false;

    var g = Game();

    int result = 0;
    print("╔════════════════════════════════════════════");
    print("║             GUESS THE NUMBER");
    printSeperate();

    do {
      stdout.write('║ Guess the number between 1 and 100 : ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);

      if (guess == null) {
        continue;
      }

      result = g.doGuess(guess);
    } while (result != 1);

    print("║                 THE END");
    print("╚════════════════════════════════════════════");

    /*
    print("Do you want to play again (y/n)");
    var play = stdin.readLineSync();
    if(play == 'Y' || play == 'y'){
      playAgain = true;
    }*/

}
