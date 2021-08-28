import 'package:get/get.dart';

//business logic,method and variable that need to be observable we place
//in controller class and use .obs to make observable
class MyAppController extends GetxController {

  var questionIndex = 0.obs;
  var totalScore = 0;


  void resetQuiz() {
    questionIndex.value = 0;
    totalScore = 0;
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;

    questionIndex = questionIndex + 1;

    print(questionIndex);

    if (questionIndex < questions.length) {
      print("we have mre questions");
    } else {
      print("no more questions");
    }
  }

  var questions = [
    //we create a map  using {} and store key value pair in it
    {
      //key           //value
      'questionText': 'What\'s your favorite color? ',
      'answers': [
        {'text':'Red','score':10},
        {'text':'Yellow','score':5},
        {'text':'Black','score':3},
        {'text':'White','score':1},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite animal? ',
      'answers': [
        {'text':'Rabbit','score':6},
        {'text':'Lion','score':6},
        {'text':'Panda','score':3},
        {'text':'Peacock','score':2},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite flower? ',
      'answers': [
        {'text':'Rose','score':2},
        {'text':'Lotus','score':4},
        {'text':'Sunflower','score':3},
        {'text':'Cheery','score':5},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite game? ',
      'answers': [
        {'text':'Cricket','score':2},
        {'text':'Football','score':6},
        {'text':'Chess','score':4},
        {'text':'Ludo','score':5},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite show? ',
      'answers': [
        {'text':'Games of Throne','score':8},
        {'text':'Naruto','score':5},
        {'text':'Bleach','score':4},
        {'text':'One-Piece','score':3},
      ],
    },
  ].obs;
}
