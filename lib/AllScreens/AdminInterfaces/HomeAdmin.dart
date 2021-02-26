import 'package:flutter/material.dart';

class HomeAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List View
    return new ListView(
      children: [
        Container(
          //margin: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 10, top: 10),
          child: Text(
            "اليوم",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(
          width: 200.0,
          height: 15,
        ),
        // main container
        Container(
          width: 300.0,
          height: 270.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                spreadRadius: 0.5,
                offset: Offset(0.7, 0.7),
              ),
            ],
          ),
          // C1
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 40),
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(10),
//                      decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(30),
//                      border: Border.all(width: 2, color: Colors.grey)),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              Text(
                "اسم المرافق",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              //----------------------------------------------------------------
              // Tracking button
              //----------------------------------------------------------------
              SizedBox(height: 5.0),
              RaisedButton(
                color: Colors.indigo,
                padding: EdgeInsets.only(left: 80.0, right: 80.0),
                splashColor: Color(0xffffffff),
                //    child: Container(
                //  height: 50.0,
                // child: Center(
                child: Text(
                  'عرض الملف الشخصي',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  //textAlign: TextAlign.center,
                ),
                // ),
                // ),
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(context,
                  //     RegistryElderlyScreen.idScreen, (route) => false);
                },
              ),

              Row(
                // r2
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //----------------------------------------------------------------
                  // Reject button
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Colors.red,
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    splashColor: Color(0xffffffff),
                    //    child: Container(
                    //  height: 50.0,
                    // child: Center(
                    child: Text(
                      'رفض',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      //textAlign: TextAlign.center,
                    ),

                    onPressed: () {
                      // Navigator.pushNamedAndRemoveUntil(context,
                      //     RegistryElderlyScreen.idScreen, (route) => false);
                    },
                  ),
                  //----------------------------------------------------------------
                  // Accept button
                  SizedBox(height: 10.0),
                  RaisedButton(
                    color: Colors.lightGreen[700],
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    splashColor: Color(0xffffffff),
                    //    child: Container(
                    //  height: 50.0,
                    // child: Center(
                    child: Text(
                      'قبول',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      // Navigator.pushNamedAndRemoveUntil(context,
                      //     RegistryElderlyScreen.idScreen, (route) => false);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
} // end of class
