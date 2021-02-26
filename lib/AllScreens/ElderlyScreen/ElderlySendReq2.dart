//ElderlySendReq2

import 'package:be/AllScreens/main1.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';



class ElderlySendReq2 extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'ElderlySendReq2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text('طلب مرافق',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.black,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.contact_support,
            color: Colors.black,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          iconSize: 40.0,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, MainScreen.idScreen, (route) => false);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 1.0),
              child: Column(children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  iconSize: 36.0,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Main1Screen.idScreen, (route) => false);
                  },
                ),
                Text(
                  "رجوع",
                  style: TextStyle(
                    //   fontFamily: 'Times New Roman',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ])),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  Text(
                    "الوجهة",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0,),   
                  TextField(
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        labelStyle: TextStyle(
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(),
                       // icon: Icon(Icons.person_pin_circle)
                        ),
                  ),
                  SizedBox(height: 10.0,),   
                  Text(
                    "جنس المرافق",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                 SizedBox(height: 10.0,),   
                  TextField(
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        labelStyle: TextStyle(
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(),
                       // icon: Icon(Icons.person_pin_circle)
                        ),
                  ),
                  SizedBox(height: 10.0,),  
                 
                  Text(
                    "المدة",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0,),   
                  TextField(
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        labelStyle: TextStyle(
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(),
                       // icon: Icon(Icons.person_pin_circle)
                        ),
                  ),
                  SizedBox(height: 10.0,),  
                  
                  Text(
                    "وقت البدء",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                 
                 SizedBox(height: 10.0,),   
                  TextField(
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        labelStyle: TextStyle(
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(),
                       // icon: Icon(Icons.person_pin_circle)
                        ),
                  ),
                  SizedBox(height: 10.0,),  
                 
                  Text(
                    "التاريخ",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0,),   
                  TextField(
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        labelStyle: TextStyle(
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(),
                        //icon: Icon(Icons.person_pin_circle
                        ),
                  ),
                  SizedBox(height: 60.0,),  
                ],
                ),
          Container(
              height: 40.0,
              width: 320.0,
              child: FlatButton(
                textColor: Colors.white,
                height: 80.0,
                   color: Color(0xff0045b0),
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //       context, RequestsElderly.idScreen, (route) => false);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ارسال ',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),],),
        ),
      ),
    );
  }
}
