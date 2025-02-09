import 'package:flutter/material.dart';
import 'package:gym_app/ui/screens/intro.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Gym App',
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Intro()),
              );
            },
            child: const Text('Start'),
          ),
          Image.asset('assets/images/heroimg.jpg'),
        ],
      )),
    );
  }
}
