import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '1'.obs;
  var secondNumber = '1'.obs;
  var mathResult = '1'.obs;
  var operation = '+'.obs;

  resetAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    mathResult.value = '0';
  }

  changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.substring(1);
    } else {
      mathResult.value = '-' + mathResult.value;
    }
  }

  addNumber(String number) {
    if (mathResult.value == '0') {
      return mathResult.value = number;
    }
    if (mathResult.value == '-0') {
      return mathResult.value = '-' + number;
    }

    mathResult.value += number;
  }

  addDecimalPoint() {
    if (mathResult.contains('.')) return;

    mathResult.value += '.';
  }

  selectOperation(String newOperation) {
    operation.value = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  deleteLastEntry() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }

  calculateResult() {
    secondNumber.value = mathResult.value;
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(secondNumber.value);
    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;
      case '-':
        mathResult.value = '${num1 - num2}';
        break;
      case 'x':
        mathResult.value = '${num1 * num2}';
        break;
      case '/':
        mathResult.value = '${num1 / num2}';
        break;
    }
    if (mathResult.value.endsWith('.0'))
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 2);
  }
}
