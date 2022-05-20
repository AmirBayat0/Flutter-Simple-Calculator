import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  /* 
  UserInput = What User entered with the keyboard .
  UserOutput = Calculate the numbers that the user entered and put into userOutPut variable.
  */
  var userInput = "";
  var userOutput = "";

  /// Equal Button Pressed Func
  equalPressed() {
    String userInputFC = userInput;
    userInputFC = userInputFC.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(userInputFC);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    userOutput = eval.toString();
    update();
  }

  /// Clear Button Pressed Func
  clearInputAndOutput() {
    userInput = "";
    userOutput = "";
    update();
  }

  /// Delet Button Pressed Func
  deleteBtnAction() {
    userInput = userInput.substring(0, userInput.length - 1);
    update();
  }

  /// on Number Button Tapped
  onBtnTapped(List<String> buttons, int index) {
    userInput += buttons[index];
    update();
  }
}
