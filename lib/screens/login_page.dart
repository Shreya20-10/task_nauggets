import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:taks_nauggets/components/progress_indicator.dart';
import 'package:taks_nauggets/screens/my_profile.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email , password) async {

    try{
      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : 'eve.holt@reqres.in',
            'password' : 'cityslicka'
          }
      );

      if(response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        // print(data['token']);
        // print('Login successfully');
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MyProfile()));

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      // appBar: AppBar(
      //   title: const Text('Sign Up Api'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Welcome",
              style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 20.0,),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                login(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('Login',
                  style: TextStyle(fontSize: 18.0),
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}