import 'package:flutter/material.dart';
import 'package:quiz_app/components/purple_container.dart';
import 'package:quiz_app/components/question_container.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
            children: [
           PurpleContainer(image: 'assets/quiz 1.png'),
          Stack(
            children: [
            Positioned(
              top: 310,
              left: 25,
              child: Column(
                children: [
                  GestureDetector(
                    onTap :(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen()));
                    },
                      child: QuestionContainer(image: 'assets/c++ 1.png',text: 'C++')),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,top: 15),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen()));
                      },
                        child: QuestionContainer(image:'assets/java 1.png',text: 'Java')),
                  ),
                  GestureDetector(
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen()));
                  },
                      child: QuestionContainer(image:'assets/python 2.png',text: 'Python'))
                ],

              ),
            )
            ],
          )
        ]));
  }
}
