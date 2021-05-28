import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login/abc.dart';


class HomePage extends StatefulWidget {
  final Abc abc;

  const HomePage({Key key, this.abc}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _checkInternetConnectivity = TextEditingController();
  TextEditingController _pwordController = TextEditingController();

  var authKey;
  
  

 /* void _loginPressed() async {
    
    if (_checkInternetConnectivity != null) {
      saveUsername(username);
      ApiConfig apiConig = new ApiConfig();
      // ignore: unnecessary_statements
      apiConig.base_URL;
      authKey = apiConig.auth_KEY;
      try {
        var progressDialog;
        progressDialog.show();
        final CREATE_POST_URL =
            apiConig.base_URL + "crm?customer=freeplantest&pword=master";
        final response = await http.get(CREATE_POST_URL, headers: {
          "Content-Type": "application/json",
          "AuthKey": '$authKey'
        });
        var status = response.statusCode;
        if (response.statusCode == 200) {
          final res = response.body;
          valueMap = json.decode(res.toString());
          String statuscode = valueMap['guidance']['status'];
          if (int.parse(statuscode) == 1) {
            //_showDialog("Login", valueMap['guidance']['message']);
            saveLoginDeatils(username);
            progressDialog.hide();
            saveJsonRes_Prefs(res.toString());
            //Navigator.of(context).pop();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => new HomePage()),
            );
          } else if (int.parse(statuscode) == 11) {
            progressDialog.hide();
            setState(() {
              var forgotUserId = false;
            });

            _showDialog("Login", valueMap['guidance']['message']);
          } else {
            progressDialog.hide();
            _showDialog("Login", valueMap['guidance']['message']);
          }
        } else {
          progressDialog.hide();
          throw new Exception("Error in User Login");
        }
      } on SocketException catch (e) {
        var message = e.message;
        var status = e.osError;

        progressDialog.hide().whenComplete(() {
          print(progressDialog.isShowing());
        });

        print(e);
      } catch (e) {}
    } else {
      var progressDialog;
      progressDialog.hide();
      _showDialog("Login", "No Internet Connectivity");
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(widget.abc.customerDetails.customerId),
      ),
    );
  }
}



















/*
signIn(String customer, String pword) async {

    String myurl =
        "http://adserver.i-on.in:9003";
    http.post(myurl, headers: {
      'Accept': 'application/json',
      'authorization': 'pass your key(optional)'
    }, body: {
      "customer": customer,
      "pword": pword
    }).then((response) {
      print(response.statusCode);
      print(response.body);
 */


/*
String myurl =
        "http://adserver.i-on.in:9003";
    http.get(myurl, headers: {
      'Accept': 'application/json',
      'authorization': 'pass your key(optional)'
    }, body: {
      "customer": customer,
      "pword": pword
    }).then((response) {
      print(response.statusCode);
      print(response.body);
    });

      /* String url = "http://adserver.i-on.in:9003/";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"customer": customer, "pword": pword};
    var jsonResponse;
    var res = await http.post(url, body: body);

    //Need to check api status
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print("Response status: ${res.statusCode}");
      print("Response status: ${res.body}");

      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });

        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });

      print("Response status: ${res.body}");
    } */
 */