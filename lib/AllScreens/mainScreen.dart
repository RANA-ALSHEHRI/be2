import 'package:flutter/material.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/AllScreens/RegistryScreen.dart';

class MainScreen extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'mainScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BE MY MATE'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image(
                image: AssetImage("image/I1.png"),
                width: 410.0,
                height: 350.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                'تطبيق صمُم لأجلك',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 24,
                  color: const Color(0xff0045b0),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100.0,
                width: 500.0,
              ),
              RaisedButton(
                color: Colors.black,
                // padding: EdgeInsets.all(15.0),
                splashColor: Colors.blue,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                color: Colors.black,
                // padding: EdgeInsets.all(15.0),
                splashColor: Colors.blue,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'تسجيل جديد',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RegistryScreen.idScreen, (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
