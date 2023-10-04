import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/blocs/quiz_cubit/quiz_app_cubit.dart';
import 'package:quiz_app/screens/score_screen.dart';

import '../components/purple_container.dart';
import '../models/quiz_model.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizAppCubit, QuizAppState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit = QuizAppCubit.get(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
            controller: controller,
            itemCount: cubit.quizData.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  PurpleContainer(image: cubit.quizData[index].image),
                  Positioned(
                      top: 280,
                      left: 15,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 316,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Align(alignment: Alignment.center,
                              child: Text(cubit.quizData[index].questions,
                                  style: const TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          for (int i = 0; i < cubit.quizData[index].answers.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 316,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: cubit.isPressed == true ?
                                         cubit.quizData[index].answers.values.toList()[i] == true ?
                                          Colors.green:Colors.red:Colors.white
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: const Offset(0, 3),
                                        )
                                      ]),
                                  child: MaterialButton(
                                    onPressed : cubit.answered == false? () {
                                        cubit.isPressedTrueFunction();
                                        cubit.isAnsweredTrueFunction() ;
                                        if(cubit.quizData[index].answers.values.toList()[i] == true) {
                                         cubit.counter++;
                                        }
                                    } : null ,
                                    child: Text(
                                        cubit.quizData[index].answers.keys.toList()[i],
                                        style: const TextStyle(color: Colors.black)),
                                  )),
                            ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xffC7A8FC),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: MaterialButton(
                              onPressed: (){
                                if(index == cubit.quizData.length-1){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ScoreScreen(score: cubit.counter*10)));
                                }
                                else{
                                   cubit.isPressedFalseFunction();
                                    cubit.isAnsweredFalseFunction() ;
                                  controller.nextPage(duration: const Duration(microseconds: 22), curve: Curves.bounceInOut);
                                }
                              },
                              child:  Text(index == cubit.quizData.length-1 ?'Finish':'Next',style: const TextStyle(
                                  color: Colors.black,fontSize: 20)),
                            ),
                          )

                        ],
                      ))
                ],
              );
            }));
  },
);
  }
}
