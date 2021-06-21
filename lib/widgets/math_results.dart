import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';
import 'package:getx_calculator/widgets/line_separator.dart';
import 'package:getx_calculator/widgets/main_result.dart';
import 'package:getx_calculator/widgets/sub_result.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.operation}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            LineSeparator(),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
