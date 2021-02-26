import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestDetailsCom.dart';
import 'package:be/AllScreens/CompanionScreen/LoginComScreen.dart';
import 'package:be/AllScreens/CompanionScreen/registryComScreen.dart';
import 'package:be/AllScreens/ElderlyScreen/ElderlySendReq2.dart';
import 'package:be/AllScreens/ElderlyScreen/LoginElderlyScreen.dart';
import 'package:be/AllScreens/ElderlyScreen/NotificationElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/registryElderly.dart';
import 'package:be/AllScreens/FamilyScreen/LoginFamilyScreen.dart';
import 'package:be/AllScreens/FamilyScreen/NavFamily.dart';
import 'package:be/AllScreens/FamilyScreen/Traking.dart';
import 'package:be/AllScreens/FamilyScreen/registryFamily.dart';
import 'package:be/FRverification.dart';
import 'package:be/F.dart';
import 'package:be/AllScreens/ReqComCurrent.dart';
import 'package:be/AllScreens/ReqComPrevious.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/HomeCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/NavCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/NotificationCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/ProfileCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestsCompanion.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/Main1.dart';
import 'package:be/AllScreens/MainScreen.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/AllScreens/RegistryScreen.dart';


import 'AllScreens/ElderlyScreen/HomeElderly.dart';
import 'AllScreens/ElderlyScreen/RequestDetails.dart';
import 'AllScreens/ReqCom1-elderly.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

//DatabaseReference represents a particular location in your 
//Firebase Database and can be used for reading or writing data to that location.
DatabaseReference familyUserRef =
//FirebaseDatabase:The entry point for accessing a Firebase Database
    FirebaseDatabase.instance.reference().child("family");
//Node family will have all family member's information inside it.

// انشائنا الريفرينس هنا مو في كل كلاس عشان في حال احتجناها نقدر نوصلها من اي صفحة
DatabaseReference elderlyUserRef =
    FirebaseDatabase.instance.reference().child("elderly"); //elderly

DatabaseReference companionUserRef =
    FirebaseDatabase.instance.reference().child("companion"); //companion

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:  MainScreen.idScreen,
      routes: {

        // main Screeen
        MainScreen.idScreen: (context) => MainScreen(),
        Main1Screen.idScreen: (context) => Main1Screen(),
        LoginScreen.idScreen: (context) => LoginScreen(),
F.idScreen : (context) =>  F(),

        //interface Companion
       FRverification.idScreen : (context) =>  FRverification(),
       // 
       RequestDetailsCom.idScreen : (context) =>  RequestDetailsCom(),
       RequestDetails.idScreen : (context) => RequestDetails(),
        LoginComScreen.idScreen: (context) => LoginComScreen(),
        NavCompanion.idScreen: (context) => NavCompanion(),
        ReqComPrevious.idScreen: (context) =>ReqComPrevious(),
        ReqComCurrent .idScreen: (context) =>ReqComCurrent(),
        HomeCompanion.idScreen: (context) =>HomeCompanion(),
        ProfileCompanion.idScreen: (context) => ProfileCompanion(),
        NotificationCompanion.idScreen: (context) =>  NotificationCompanion(),

      

       //interface Elderly
        ReqCom.idScreen: (context) => ReqCom(),
        HomeElderly.idScreen: (context) => HomeElderly(),
        RequestsElderly.idScreen:(context) => RequestsElderly(),
        RequestsCompanion.idScreen: (context) => RequestsCompanion(),
        ElderlySendReq2.idScreen: (context) => ElderlySendReq2(),
        RegistryScreen.idScreen: (context) => RegistryScreen(),
        LoginElderlyScreen.idScreen: (context) => LoginElderlyScreen(),
        RegistryElderlyScreen.idScreen: (context) => RegistryElderlyScreen(),
        NotificationElderly.idScreen: (context) => NotificationElderly(),

        //interface Family
        RegistryFamilyScreen.idScreen: (context) => RegistryFamilyScreen(),
        LoginFamilyScreen.idScreen: (context) => LoginFamilyScreen(),
        TrakingFamilyScreen.idScreen: (context) =>  TrakingFamilyScreen(),
        NavFamily.idScreen: (context) => NavFamily()

      },
    );
  }
}
