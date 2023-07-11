

// import 'package:flutter/material.dart';
// class StateLess extends StatelessWidget {
//    StateLess({super.key});

//  int x=10;
//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('myproject tutorials',style: TextStyle(color: Colors.white),),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 50),)),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (() {
//           x++;
//           print(x);
//         }),
//         child: Icon(Icons.add),
//         ),
//     );
//   }
// }