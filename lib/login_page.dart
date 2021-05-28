import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:login/ForgotPassword.dart';
import 'package:login/home_pagr.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import 'Signup.dart';
import 'abc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   TextEditingController _customerController = TextEditingController();
   TextEditingController _pwordController = TextEditingController();

  bool _isLoading = false;

  signIn(BuildContext context,String customer, String pword) async {
    print("customer"+ customer);
    print("pword"+ pword);

    var queryParameters = {
      'customer' : customer,
      'pword' : pword,
    };



    var uri  = Uri.http("adserver.i-on.in:9003", "/crm", queryParameters);
    print("url : "+ uri.toString());
    final response = await http.get(uri,  headers: {"AuthKey": "685e968a14eaeeade097555e514cf2c1"});
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //return Album.fromJson(jsonDecode(response.body));
      print(response.body);
      var res = json.decode(response.body);
      Abc abc = Abc();
      abc = Abc.fromJson(res);
      setState(() {

      });

      if(abc.guidance.status== '1'){
        // success
        print("success:"+abc.guidance.status.toString());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage(
                abc: abc,
              );
            },
          ),
        );
      }else{
        // failed
        print("failed:"+abc.guidance.status.toString());
        Toast.show('Wrong Credential', context);

      }
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: _customerController,
                          decoration: InputDecoration(hintText: "Customer Id"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: _pwordController,
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    "SignIn",
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  onPressed: _customerController.text == "" ||
                          _pwordController.text == ""
                      ? null
                      : () {
                          setState(() {
                            _isLoading = true;

                          });
                          signIn(
                             context,
                              _customerController.text.toString(),_pwordController.text.toString());
                   // print(cus);
                   // print();
                        },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  "Forgot Password ?".toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      //  fontWeight: FontWeight.bold,
                      letterSpacing: 1.7),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  height: 1,
                  width:  0.8,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 0.04,
              ),
              Text(
                "Don't Have Account ?".toUpperCase(),
                style: TextStyle(
                    fontSize: 16,
                    // color: Colors.blue,
                    //  fontWeight: FontWeight.bold,
                    letterSpacing: 1.7),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Center(
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [Colors.blueGrey, Colors.grey[400]]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.blue[200],
                              offset: Offset(2, 2))
                        ]),
                    child: Text(
                      "Signup".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.7),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
   void _showDialog(){
     showDialog(
         context:context ,
         builder:(BuildContext context){
           return AlertDialog(
             title: new Text('Failed'),
             content:  new Text('Check your email or password'),
             actions: <Widget>[
               new RaisedButton(

                 child: new Text(
                   'Close',
                 ),

                 onPressed: (){
                   Navigator.of(context).pop();
                 },

               ),
             ],
           );
         }
     );
   }



}



