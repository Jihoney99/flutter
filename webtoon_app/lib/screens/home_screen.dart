import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: (Colors.white),
        foregroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            '오늘의 웹툰들',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
