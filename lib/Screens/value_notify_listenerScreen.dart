import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ValueNotifyListenerScreen extends StatelessWidget {
   ValueNotifyListenerScreen({super.key});

  ValueNotifier<int> _counter= ValueNotifier<int>(0);
  ValueNotifier<bool> tougle= ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Subscribe')),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: tougle, 
            builder: ((context, value, child) {
              return TextFormField(
            obscureText: tougle.value,
            decoration: InputDecoration(
              hintText: 'Password',
              suffix: InkWell(
                onTap: (() {
                  tougle.value=!tougle.value;
                }),
                child: Icon(tougle.value? Icons.visibility_off_outlined : Icons.visibility))
            ),
          );
         })
        ),
          
          Center(
            child: ValueListenableBuilder(
              valueListenable: _counter, 
              builder: ((context, value, child) {
                return Text(_counter.value.toString(),style: TextStyle(fontSize: 50),);
              }
            )
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
        _counter.value++;
        print(_counter.value.toString());
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}