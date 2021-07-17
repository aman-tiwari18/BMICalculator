import 'dart:math';

class CalculationFunction {
  CalculationFunction({this.height, this.weight});
  final int height;
  final int weight;

  double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPretaion() {
    if (bmi >= 25) {
      return 'you have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight . Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit morer.';
    }
  }
}
