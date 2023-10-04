import 'package:flutter/material.dart';
class QuestionContainer extends StatelessWidget {

   QuestionContainer({ this.image, this.text,super.key});
String ? text ;
String ?image ;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(image!),
            height: 100,
            width: 100,
          ),
          Text(
           text! ,
            style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          )
        ],
      ),
    );
  }
}
