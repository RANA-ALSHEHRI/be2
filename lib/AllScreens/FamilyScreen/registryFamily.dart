import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/AllScreens/registryScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistryFamilyScreen extends StatelessWidget {
  static const String idScreen = "registryFamily";
  TextEditingController fnameF = TextEditingController();
  TextEditingController lnameF = TextEditingController();
  TextEditingController userNameF = TextEditingController();
  TextEditingController emailF = TextEditingController();
  TextEditingController phoneF = TextEditingController();
  TextEditingController passwordF = TextEditingController();
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
                          context, RegistryScreen.idScreen, (route) => false);
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
                height: 20.0,
              ),
              Text(
                'تسجيل فرد من عائلة كبير السن',
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
                      controller: fnameF,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "الاسم الاول",
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
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: lnameF,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "الاسم الاخير",
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
                      controller: userNameF,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "اسم المستخدم",
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
                      controller: emailF,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "البريد الالكتروني",
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
                      controller: phoneF,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "رقم الجوال",
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
                      height: 12.0,
                    ),
                    RaisedButton(
                      color: Color(0xff0045b0),
                      // padding: EdgeInsets.all(15.0),
                      splashColor: Colors.blue,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 28,
                              color: const Color(0xffffffff),
                              //fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onPressed: () {
                        //error massege
                        if (fnameF.text.length < 4) {
                          Fluttertoast.showToast(msg: "name must be ...");
                        } else {
                          registerFamilyUser(context);
                        }
                      },
                    ),
                  ],
                ),
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

  // for Authentication
  //FirebaseAuth: The entry point of the Firebase Authentication SDK.
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void registerFamilyUser(BuildContext context) async {
    // create user
    final User firebaseUser = (await _firebaseAuth
            //createUserWithEmailAndPassword :create a new user account with the given email address and password.
            .createUserWithEmailAndPassword(
                email: emailF.text, password: passwordF.text)
            .catchError((eroMsg) {
      Fluttertoast.showToast(msg: "Error: " + eroMsg.toString());
    }))
        .user;

    if (firebaseUser != null) {
      //to save user info in Firebase and retrieve a value using its associated key.
      Map userDataMap = {
        "fname": fnameF.text.trim(),
        "lname": lnameF.text.trim(),
        "userName": userNameF.text.trim(),
        "email": emailF.text.trim(),
        "phone": phoneF.text.trim(),
        "password": passwordF.text.trim(),
      };
      familyUserRef.child(firebaseUser.uid).set(userDataMap);
      Fluttertoast.showToast(msg: "your account has been created");
      //انقله لصفحة الرئسية لفرد العائلة
      Navigator.pushNamedAndRemoveUntil(
          context, MainScreen.idScreen, (route) => false);
    } else {
      Fluttertoast.showToast(msg: "new user has not being created");
    }
  }
}
// displayErromeg(String meg, BuildContext context)
// {
//   Fluttertoast.showToast(msg: meg);
// }
