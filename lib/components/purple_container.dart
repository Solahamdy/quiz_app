import 'package:flutter/material.dart';
class PurpleContainer extends StatelessWidget {
  String image ;

   PurpleContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 411,
        height: 370,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xffA76AE4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned(
                top : -80,
                left: -80,
                child: Container(
                  height: 200, width: 150,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                )),
            Positioned(
                top : 120,
                right: -120,
                child: Container(
                  height: 250, width: 200,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                )),
            Positioned(
                top : -50,
                right: 100,
                child: Container(
                  height: 90, width: 150,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                )),
            Positioned(
                top : 50,
                right: 100,
                child: Container(
                  height: 40, width: 40,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                )),
            Positioned(
                top : 80,
                right: 25,
                child: Container(
                  height: 60, width: 60,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                )),
            Positioned(
                top : 70,
                left: 30,
                child: Container(
                  height: 200, width: 200,
                  decoration:   const BoxDecoration(
                    shape: BoxShape.circle ,color: Color(0xffC7A8FC),
                  ),
                  child: Stack(
                      children:[
                        Center(
                          child: Container(
                            height: 150,width: 150,
                            decoration:  const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70
                            ),
                            child: Center(
                                child:
                                Container(
                                    height: 120,width: 120,
                                    decoration:  const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Image(image: AssetImage(image),))),
                          ),
                        ),]
                  ),


                )),
          ],
        ));
  }
}
