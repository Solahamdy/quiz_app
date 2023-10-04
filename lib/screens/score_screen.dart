import 'package:flutter/material.dart';
import 'package:quiz_app/components/purple_container.dart';
class ScoreScreen extends StatelessWidget {
  final int score ;
  const ScoreScreen({super.key,required this.score});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffA76AE4),
      body: Column(
        children: [
          PurpleContainer(image: 'assets/quiz 1.png'),
          Text('Score : $score' ,style: const TextStyle(fontSize: 30,color: Colors.black,)),
          const Spacer(),
          const Image(image: AssetImage('assets/completed 1.png'))
        ],
      ),
    );
  }
}
