import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(DateTime.now().toString(),style: TextStyle(fontSize: 20),),),
          Center(child: Text(count.toString(),style: TextStyle(fontSize: 50),)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
          });
          print(count++);
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}