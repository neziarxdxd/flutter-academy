import 'Questions.dart';
class QuizBook{
    List<Questions> questionBank = [
    Questions('You can lead a cow down stairs but not up1 stairs',false),
    Questions('You can lead a cow down stairs but not up22 stairs',true),
    Questions('You can lead a cow down stairs but not up232 stairs',false),    
    ];

    String _questions;
    bool answers;
    int number = 0;

    bool getAnswer(){
    return questionBank[number].answer;
    }

    String getQuestion(){
      return questionBank[number].question;
    }
    void nextQuestion(){
      if (number <questionBank.length){
       number++;
      }
      else{
        print('done');
      }
    }

    
}
