
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myproject/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  void initState(){
    super.initState();
    final countProvider=Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) { 
      countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Subscribe')),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder:(context, value, child){
          print('Only this value build');
         return Text(value.count.toString(),style: TextStyle(fontSize: 30),);
        }
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}