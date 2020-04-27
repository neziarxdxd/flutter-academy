import 'Questions.dart';
class QuizBook{
    List<Questions> _questionBank = [
    Questions('You can lead a cow down stairs but not up1 stairs',false),
    Questions('You can lead a cow down stairs but not up22 stairs',true),
    Questions('You can lead a cow down stairs but not up232 stairs',false),    
    ];

    String _questions;
    bool answers;
    int number = 0;

    bool getAnswer(){
    return _questionBank[number].answer;
    }

    String getQuestion(){
      return _questionBank[number].question;
    }
    void nextQuestion(){
      if (number>_questionBank.length-1){
       number++;
      }
      else{
        print('done');
      }
    }

    
}
