//ElderlySendReq2

import 'package:flutter/material.dart';

import 'main1.dart';
import 'mainScreen.dart';
//الطلبات الحالية للمرافق 

class ReqComCurrent extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'ReqComCurrent';
  @override
  Widget build(BuildContext context) {
     //Scaffold(
      
 return new ListView(  children: [
    SizedBox(height: 15,),
   Container(
              height: 235.0,
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
                    blurRadius: 16.0,
                    spreadRadius: 0.5,
                    offset: Offset(0.7, 0.7),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // SizedBox(height: 10.0),
                  Text("مطلق الغامدي ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10.0),
                      //add image
                      Text("الوجهة : مستشفى الملك فهد ",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ],
                  ),
                  // SizedBox(height: 10.0),
                
                
                  Text(" حالة الطلب : يبداء الساعة ١٠ صباحا ",
                      style: TextStyle(
                        fontSize: 18,
                      )
                      ),
                  //   SizedBox(height: 10.0),
                
                
           Container(
             height: 150.0,
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                      ),
              child: Column(
                children: [
                 Padding(
                    padding: EdgeInsets.only(left:50.0, right: 50.0, top: 10.0),
                child:  Row(
                      children: [
                        SizedBox(height: 70.0),
Column(
  children: [
  //   SizedBox(width: 20.0),
 RawMaterialButton(
  onPressed: () {},
  elevation: 2.0,
  fillColor: Colors.white,  
  
  
  child: Icon(
    Icons.close ,
    color: Colors.red,
    size: 35.0,
  ),
  padding: EdgeInsets.all(12.0),
  shape: CircleBorder(),
  
),
Text("إلغاء",
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 20,
                                color: Colors.black,
                               // fontWeight: FontWeight.w700,
                              ),),
  ],),

  Column(
  children: [
        // SizedBox(width: 80.0),
 RawMaterialButton(
  onPressed: () {},
  elevation: 2.0,
  fillColor: Colors.white,
  child: Icon(
    Icons.call,
    
    size: 35.0,
  ),
  padding: EdgeInsets.all(12.0),
  shape: CircleBorder(),
),
Text("اتصال",
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 20,
                                color: Colors.black,
                           //     fontWeight: FontWeight.w700,
                              ),),
  ],),
  Column(
  children: [
      //   SizedBox(width: 40.0),
 RawMaterialButton(
  onPressed: () {},
  elevation: 2.0,
  fillColor: Colors.white,
  child: Icon(
    Icons.chat,
    size: 35.0,
  ),
  padding: EdgeInsets.all(12.0),
  shape: CircleBorder(),
),
Text("مراسلة",
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 20,
                                color: Colors.black,
                             ///   fontWeight: FontWeight.w700,
                              ),),
  ],),
                       ], ),
                 ),
                       SizedBox(height: 10.0),
                   RaisedButton(
                        color: Colors.lightGreen[700],
                        padding: EdgeInsets.only(left:80.0, right: 80.0),
                        splashColor:Color(0xffffffff),
                    //    child: Container(
                         //  height: 50.0,
                         // child: Center(
                            child: Text(
                              'وصل طالب الخدمة',
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 20,
                                color:  Colors.white,
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
                     
                ],
              ),
           ), 
                ],
           ),
           ),
          
 ],
   );
   
   }
}