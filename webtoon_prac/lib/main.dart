import 'package:flutter/material.dart';

import 'widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Jihun',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('HELLO WORLD',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 15))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 22),
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      textColor: Colors.white,
                      bgColor: Color(0xFF1F2123),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
