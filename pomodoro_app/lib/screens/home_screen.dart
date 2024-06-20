import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyfiveMinute = 1500;
  int totalSeconds = twentyfiveMinute;
  bool isRunning = false;
  int totalPromodors = 0;
  late Timer timer; // late 변수는 나중에 초기화 해도 된다는 뜻임 *쩌네

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPromodors = totalPromodors + 1;
        isRunning = false;
        totalSeconds = twentyfiveMinute;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    isRunning = true;
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    setState(() {
      totalSeconds = twentyfiveMinute;
      isRunning = false;
      totalPromodors = 0;
    });
  }

  String format(int seconds) {
    var duration =
        Duration(seconds: seconds); // duration을 쓰면 초를 분으로 바꿔주는듯 개 편리함
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Theme.of(context).cardColor,
                    iconSize: 120,
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    icon: isRunning
                        ? const Icon(Icons.pause_circle_outline_outlined)
                        : const Icon(Icons.play_circle_outlined),
                  ),
                  if (isRunning == false)
                    IconButton(
                      color: Theme.of(context).cardColor,
                      iconSize: 50,
                      onPressed: onResetPressed,
                      icon: const Icon(Icons.restore_page_outlined),
                    ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Transform.translate(
                    offset: const Offset(0, 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).cardColor,
                        // borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Promodor',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .color,
                            ),
                          ),
                          Text(
                            '$totalPromodors',
                            style: TextStyle(
                              fontSize: 58,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
