//the naming convention for files in Dart is snake case
//meaning, all of the words will be of small caps and be separated
//with underscore (_)
//for the classes we are using pascal case (e.g.: GradientContainer)
//for the variable names we will be using camel case (.e.g: bottomCenter)
import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';

//dart is a type safe language, which means that
//it will not allow you to set a value of the wrong type
const Alignment alignmentTopLeft = Alignment.topRight;
//Type annotation. we explicitly define the data type
const Alignment alignmentBottomRight = Alignment.bottomRight;
//type inference. based on initial value
//the values are actually replaced during compile time
//the values should already be known like literals
List<String> listOfWords = ['hello', 'world'];
List<int> listOfNumbers = [1, 2, 3, 4, 5];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  //what is method overriding?
  //how is method overriding different from method overloading
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink.shade300,
            Colors.blue.shade400,
          ],
          begin: alignmentTopLeft,
          end: alignmentBottomRight,
        ),
      ),
      child: const Center(child: MagicBallWidget()),
    );
  }
}
