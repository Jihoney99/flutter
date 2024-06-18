import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prac_02/localData/probablity.dart';

class DataConfigure with ChangeNotifier {
  int _Stage = 1;

  int get getUpState => _Stage;

  String state = '준비';

  Map<String, double> get current =>
      stageProbabilities[_Stage] ??
      {'success': 0.0, 'maintain': 0.0, 'decrease': 0.0};

  void resetStage() {
    _Stage = 1;
    state = '준비';
    notifyListeners();
  }

  void upStage() {
    _Stage += 1;
    notifyListeners();
  }

  void downStage() {
    _Stage = max(1, _Stage - 1);
    notifyListeners();
  }

  void chkMapValue() {
    print('check value :  $current');
    print('check stage :  $_Stage');
    upStage();
    print('check next stage :  $_Stage');
    print('check nest value :  $current');
  }

  void applyProbability() {
    final Random random = Random();
    final double randomNumber = random.nextDouble();
    print('random number : $randomNumber');

    Map<String, double> stageProb = current;
    print('stageProb : $stageProb');
    double lowerBound = 0.0;

    for (String outCome in stageProb.keys) {
      double upperBound = lowerBound + stageProb[outCome]!;
      if (randomNumber >= lowerBound && randomNumber < upperBound) {
        if (outCome == 'success') {
          upStage();
          state = '강화 성공';
        } else if (outCome == 'decrease') {
          downStage();
          state = '강화 실패';
        } else if (outCome == 'mountain') {
          state = '강화 실패, 유지';
        }
      }
      lowerBound = upperBound;
    }
  }
}
