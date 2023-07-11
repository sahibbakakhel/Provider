

import 'package:flutter/material.dart';
import 'package:myproject/provider/AuthProvider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailControlar = TextEditingController();
  TextEditingController passwordControlar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final authProvider= Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Screen'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailControlar,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: passwordControlar,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                authProvider.login(emailControlar.text.toString(), passwordControlar.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: authProvider.loading? CircularProgressIndicator(): Text('Login',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}