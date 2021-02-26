import 'package:be/AllScreens/ElderlyScreen/HomeElderly.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginElderlyScreen extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'LoginElderlyScreen';

  TextEditingController emailF = TextEditingController();
  TextEditingController passwordF = TextEditingController();

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
                          context, LoginScreen.idScreen, (route) => false);
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
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                'تسجيل الدخول',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 24,
                  color: const Color(0xff0045b0),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailF,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "الايميل",
                        labelStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 20.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w700,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: passwordF,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: " كلمة المرور",
                        labelStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 20.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w700,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    RaisedButton(
                      color: Color(0xff0045b0),
                      // padding: EdgeInsets.all(15.0),
                      splashColor: Colors.blue,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 28,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (emailF.text.length < 4) {
                          Fluttertoast.showToast(msg: "name must be ...");
                        } else if (passwordF.text.isEmpty) {
                          Fluttertoast.showToast(msg: "name must be ...");
                        } else {
                          authenticateUser(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  //
                  print('object');
                  // Navigator.pushNamedAndRemoveUntil(context, RegistryScreen.idScreen, (route) => false);
                },
                child: Text(
                  'نسيت كلمة المرور؟',
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
//FirebaseAuth gateway to the Firebase authentication API. 
//reference Firebase.Auth.FirebaseAuth objects to manage user accounts.
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void authenticateUser(BuildContext context) async {
    final User firebaseUser = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: emailF.text, password: passwordF.text)
            .catchError((eroMsg) {
      Fluttertoast.showToast(msg: "Error: " + eroMsg.toString());
    }))
        .user;

    if (firebaseUser != null) {
      //اتحقق اذا فعلا المستخدم مسجل في الفيربيس او لا

      elderlyUserRef.child(firebaseUser.uid).once().then((DataSnapshot snap) {
        if (snap.value != null) {
          // main screen family
          Navigator.pushNamedAndRemoveUntil(
              context, HomeElderly.idScreen, (route) => false);
          Fluttertoast.showToast(msg: "login");
        } else {
          _firebaseAuth.signOut();
          Fluttertoast.showToast(msg: "create new account");
        }
      });
      //انقله لصفحة الرئسية لفرد العائلة
      // Navigator.pushNamedAndRemoveUntil(
      //     context, MainScreen.idScreen, (route) => false);
    } else {
      Fluttertoast.showToast(msg: "erro cannot login");
    }
  }
}
