import 'package:flutter/material.dart';
import 'package:prac_02/Config/dataConfigProvider.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final dataConfigure = Provider.of<DataConfigure>(context);
    Map<String, double> stageprob = dataConfigure.current;

    double successPercent = stageprob['success']! * 100;
    double decreasePercent = stageprob['decrease']! * 100;
    double maintainPercent = stageprob['maintain']! * 100;

    String successText = successPercent.toStringAsFixed(2);
    String maintainText = maintainPercent.toStringAsFixed(2);
    String decreaseText = decreasePercent.toStringAsFixed(2);

    String state = dataConfigure.state;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state,
                style:
                    const TextStyle(fontSize: 60, fontWeight: FontWeight.w500)),
            Text(dataConfigure.getUpState.toString(),
                style:
                    const TextStyle(fontSize: 60, fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  children: [
                    const Text('성공 확률 : '),
                    Text(successText),
                    const Text(' %'),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    const Text('유지 확률 : '),
                    Text(maintainText),
                    const Text(' %'),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    const Text('하락 확률 : '),
                    Text(decreaseText),
                    const Text(' %'),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: dataConfigure.applyProbability,
                    child: const Text(
                      '강화',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: dataConfigure.resetStage,
                    child: const Text(
                      '리셋',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
