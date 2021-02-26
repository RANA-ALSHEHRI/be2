import 'package:be/AllScreens/ElderlyScreen/registryElderly.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/AllScreens/CompanionScreen/registryComScreen.dart';
import 'package:be/AllScreens/FamilyScreen/registryFamily.dart';

class RegistryScreen extends StatelessWidget {
  static const String idScreen = "registry";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_outlined,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    iconSize: 40.0,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MainScreen.idScreen, (route) => false);
                    },
                  ),
                  Text(
                    "رجوع   ",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'تسجيـل جديد كـ  ',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
                width: 500.0,
              ),
              RaisedButton(
                color: Color(0xff0045b0),
                // padding: EdgeInsets.all(15.0),
                splashColor: Colors.blue,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      ' كبيــر سن',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 30,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context,
                      RegistryElderlyScreen.idScreen, (route) => false);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.black,
                // padding: EdgeInsets.all(15.0),
                splashColor: Colors.blue,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'فرد من عائلة كبير السن',
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
                      context, RegistryFamilyScreen.idScreen, (route) => false);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.black,
                // padding: EdgeInsets.all(15.0),
                splashColor: Colors.blue,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'مرافق',
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
                      context, RegistryComScreen.idScreen, (route) => false);
                },
              ),
              SizedBox(
                height: 100.0,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
                },
                child: Text(
                  'أملك حساب بالفعل',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w700,
                  ),
                  //ممكن اخليها لا تملك حساب اضغط هنا لانشاء حساب
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
