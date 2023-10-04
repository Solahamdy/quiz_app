import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/quiz_model.dart';

part 'quiz_app_state.dart';

class QuizAppCubit extends Cubit<QuizAppState> {
  QuizAppCubit() : super(QuizAppInitial());
  static QuizAppCubit get(context) => BlocProvider.of(context);
  List<QuizModel> quizData = [
    QuizModel(
        questions: ' Which allows you to reuse the written code?',
        answers: {
          "a) Encapsulation": false,
          "b) Abstraction": false,
          "c) Polymorphism ": false,
          "d) Inheritance ": true,
        },
        image: 'assets/c++ 1.png'),
    QuizModel(
        questions: 'Number of primitive data types in Java are?',
        answers: {"a) 6": false, "b) 7": false, "c) 8": true, "d) 9": false},
        image: 'assets/java 1.png'),
    QuizModel(
        questions: ' Is Python code compiled or interpreted?',
        answers: {
          "a) Python code is both compiled and interpreted": true,
          "b) Python code is neither compiled nor interpreted": false,
          "c) Python code is only compiled": false,
          "d) Python code is only interpreted": false
        },
        image: 'assets/python 2.png')
  ];
  bool isPressed = false;
  bool answered = false;
  int counter = 0;

  isPressedTrueFunction(){
     isPressed = true;
    emit(IsPressed());
  }
  isPressedFalseFunction(){
     isPressed = false;
    emit(IsPressed());
  }

  isAnsweredFalseFunction(){
     answered = false;
    emit(IsAnswered());
  }
  isAnsweredTrueFunction(){
    answered  = true;
    emit(IsAnswered());
  }




}
