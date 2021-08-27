import 'package:get/get.dart';

//business logic,method and variable that need to be observable we place
//in controller class and use .obs to make observable
class MyAppController extends GetxController {
  var questionIndex = 0.obs;


  void answerQuestion() {
    questionIndex =questionIndex + 1;

    print(questionIndex);
  }

  var questions = [
    'What\'s your favorite color? ',
    'What\'s your favorite animal? ',
    'What\'s your favorite flower? ',
    'What\'s your favorite game? ',
    'What\'s your favorite show? ',
  ];

}