import 'package:flutter/material.dart';
import 'package:myproject/Screens/LoginScreen.dart';
import 'package:myproject/provider/AuthProvider.dart';
//import 'package:myproject/Screens/value_notify_listenerScreen.dart';
import 'package:myproject/provider/Theme_changer_provider.dart';
//import 'package:myproject/provider/count_provider.dart';
//import 'package:myproject/provider/example_one_provider.dart';
//import 'package:myproject/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const myproject());
}

class myproject extends StatelessWidget {
  const myproject({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final themeChangerProvider= Provider.of<ThemeChangerProvider>(context);
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider(create: (_) => CountProvider()),
        //ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        //ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeChangerProvider= Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
        title: 'flutter demo',
        themeMode: themeChangerProvider.themeMode,
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.light,
          // appBarTheme: AppBarTheme(
          //   backgroundColor: Colors.blue,
          // )
          ),
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.purple,
            primaryColor: Colors.purple,
            iconTheme: IconThemeData(
              color: Colors.pink,
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.teal,
            )
          ),
          home: LoginScreen(),
        );
      }
      ),
    );
  }
}
