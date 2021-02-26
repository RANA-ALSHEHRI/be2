//ElderlySendReq2

import 'package:flutter/material.dart';

import 'main1.dart';
import 'mainScreen.dart';

class ReqCom extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'ReqCom';
  @override
  Widget build(BuildContext context) {
     //Scaffold(
      
 return new ListView(
        children: [
          // Positioned(
          // //
          //  top: 50.0,
          //   left: 0.0,
          //   right: 0.0,
          // //  bottom: 80.0,
            //(
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
//               child: Column(
//                 children: [
//                   // SizedBox(height: 10.0),
//                   Text("مطلق الغامدي ",
//                       textAlign: TextAlign.end,
//                       style: TextStyle(
//                         fontSize: 18,
//                       )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.max,
//                     //   crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(width: 10.0),
//                       //add image
//                       Text("الوجهة : مستشفى الملك فهد ",
//                           style: TextStyle(
//                             fontSize: 18,
//                           )),
//                     ],
//                   ),
//                   // SizedBox(height: 10.0),
                
                
//                   Text(" حالة الطلب : يبداء الساعة ١٠ صباحا ",
//                       style: TextStyle(
//                         fontSize: 18,
//                       )
//                       ),
//                   //   SizedBox(height: 10.0),
                
                
//            Container(
//              height: 150.0,
//                       width: 370,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10.0),
//                             topRight: Radius.circular(10.0),
//                             bottomLeft: Radius.circular(10.0),
//                             bottomRight: Radius.circular(10.0)),
//                       ),
//               child: Column(
//                 children: [
//                  Padding(
//                     padding: EdgeInsets.only(left:50.0, right: 50.0, top: 10.0),
//                 child:  Row(
//                       children: [
//                         SizedBox(height: 70.0),
// Column(
//   children: [
//   //   SizedBox(width: 20.0),
//  RawMaterialButton(
//   onPressed: () {},
//   elevation: 2.0,
//   fillColor: Colors.white,  
  
  
//   child: Icon(
//     Icons.close ,
//     color: Colors.red,
//     size: 35.0,
//   ),
//   padding: EdgeInsets.all(12.0),
//   shape: CircleBorder(),
  
// ),
// Text("إلغاء",
//                               style: TextStyle(
//                                 fontFamily: 'Times New Roman',
//                                 fontSize: 20,
//                                 color: Colors.black,
//                                // fontWeight: FontWeight.w700,
//                               ),),
//   ],),

//   Column(
//   children: [
//         // SizedBox(width: 80.0),
//  RawMaterialButton(
//   onPressed: () {},
//   elevation: 2.0,
//   fillColor: Colors.white,
//   child: Icon(
//     Icons.call,
    
//     size: 35.0,
//   ),
//   padding: EdgeInsets.all(12.0),
//   shape: CircleBorder(),
// ),
// Text("اتصال",
//                               style: TextStyle(
//                                 fontFamily: 'Times New Roman',
//                                 fontSize: 20,
//                                 color: Colors.black,
//                            //     fontWeight: FontWeight.w700,
//                               ),),
//   ],),
//   Column(
//   children: [
//       //   SizedBox(width: 40.0),
//  RawMaterialButton(
//   onPressed: () {},
//   elevation: 2.0,
//   fillColor: Colors.white,
//   child: Icon(
//     Icons.chat,
//     size: 35.0,
//   ),
//   padding: EdgeInsets.all(12.0),
//   shape: CircleBorder(),
// ),
// Text("مراسلة",
//                               style: TextStyle(
//                                 fontFamily: 'Times New Roman',
//                                 fontSize: 20,
//                                 color: Colors.black,
//                              ///   fontWeight: FontWeight.w700,
//                               ),),
//   ],),
//                        ], ),
//                  ),
//                        SizedBox(height: 10.0),
//                    RaisedButton(
//                         color: Color(0xff0045b0),
//                         padding: EdgeInsets.only(left:160.0, right: 160.0),
//                         splashColor: Colors.lightGreen,
//                     //    child: Container(
//                          //  height: 50.0,
//                          // child: Center(
//                             child: Text(
//                               ' التالي',
//                               style: TextStyle(
//                                 fontFamily: 'Times New Roman',
//                                 fontSize: 20,
//                                 color: Color(0xffffffff),
//                                 fontWeight: FontWeight.w700,
//                               ),
//                               //textAlign: TextAlign.center,
//                             ),
//                          // ),
//                        // ),
//                         onPressed: () {
//                           // Navigator.pushNamedAndRemoveUntil(context,
//                           //     RegistryElderlyScreen.idScreen, (route) => false);
//                         },
//                       ),
                     
//                 ],
//               ),
//             ),
                  
                  
//                       ],
//               ),
//             ),
         
      
            //),
        ],
        );
  }
}






//       appBar: AppBar(
//         toolbarHeight: 80.0,
//         backgroundColor: Colors.white,
//         title: Text('طلب مرافق',
//             style: TextStyle(
//               fontFamily: 'Times New Roman',
//               color: Colors.black,
//             )),
//         leading: IconButton(
//           icon: Icon(
//             Icons.contact_support,
//             color: Colors.black,
//             semanticLabel: 'Text to announce in accessibility modes',
//           ),
//           iconSize: 40.0,
//           onPressed: () {
//             Navigator.pushNamedAndRemoveUntil(
//                 context, MainScreen.idScreen, (route) => false);
//           },
//         ),
//         actions: <Widget>[
//           Padding(
//               padding: EdgeInsets.only(right: 0.0),
//               child: Column(children: <Widget>[
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_forward_outlined,
//                     color: Colors.black,
//                     semanticLabel: 'Text to announce in accessibility modes',
//                   ),
//                   iconSize: 36.0,
//                   onPressed: () {
//                     Navigator.pushNamedAndRemoveUntil(
//                         context, Main1Screen.idScreen, (route) => false);
//                   },
//                 ),
//                 Text(
//                   "رجوع",
//                   style: TextStyle(
//                     //   fontFamily: 'Times New Roman',
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                 ),
//               ])),
//         ],
//       ),
//       //The Tob bar
//       body: new ListView(children: [
//       // Container(
//       //   color: Colors.black,
//       //   height: 0.0,
//       //   child: Center(child:Text(""))),
//        DefaultTabController(
//         length: 2,
//         initialIndex: 0,
//         child: Column(children: [
//           TabBar(tabs: [
//                    Tab(child:
//                    Align(
//                       alignment: Alignment.center,
//                       child: Text("السابقة", style: TextStyle(
//                       fontFamily: 'Times New Roman',
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w700,
//                     ),
//                     ),
//                     ),
//                     ),
//                     Tab(child:
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text("الحالية", style: TextStyle(
//                       fontFamily: 'Times New Roman',
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w700,
//                     ),
//                     ),
//                     ),)]
//           ),
//           Container(
//             height:300.0,
//             child: TabBarView(children: [
//               Center(child: Text("")),
//               Center(child: Text("")),
//             ]
//             ),
//           )

//         ],),
//        ),
//     ],

//           ),
//         //     Column(
//         //         mainAxisAlignment: MainAxisAlignment.center,
//         //         crossAxisAlignment: CrossAxisAlignment.end,
//         //         children: <Widget>[
//         //           Align(
//         //             alignment: Alignment.topRight,
//         //           ),
//         //            new ButtonTheme(
//         // child: new ButtonBar(
//         // alignment: MainAxisAlignment.center,
//         // children: <Widget>[
//         //         new RaisedButton(
//         //           onPressed: (){},
//         //           child: Text(
//         //             "السابقة",
//         //             style: TextStyle(
//         //               fontFamily: 'Times New Roman',
//         //               fontSize: 20,
//         //               color: Color(0xff0045b0),
//         //               fontWeight: FontWeight.w700,
//         //             ),
//         //           ),
//         //           color: Colors.white,
//         //        padding:
//         //                     const EdgeInsets.symmetric(horizontal: 65.0 ,vertical: 10.0),
//         //         ),
//         //         new RaisedButton(
//         //           onPressed: (){},
//         //           child: Text(
//         //             "الحالية",
//         //             style: TextStyle(
//         //               fontFamily: 'Times New Roman',
//         //               fontSize: 20,
//         //              color: Color(0xff0045b0),
//         //               fontWeight: FontWeight.w700,
//         //             ),
//         //           ),
//         //           color: Colors.white,
//         //            padding:
//         //                     const EdgeInsets.symmetric(horizontal: 65.0, vertical: 10.0),
//         //         ),
//         //           ],
//         // ),
//         // ),

//                 //   Text(
//                 //     "الوجهة",
//                 //     style: TextStyle(
//                 //       fontFamily: 'Times New Roman',
//                 //       fontSize: 20,
//                 //       color: Colors.black,
//                 //       fontWeight: FontWeight.w700,
//                 //     ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),
//                 //   TextField(
//                 //     //controller: fnameF,
//                 //     keyboardType: TextInputType.text,
//                 //     decoration: InputDecoration(
//                 //         contentPadding:
//                 //             const EdgeInsets.symmetric(vertical: 5.0),
//                 //         labelStyle: TextStyle(
//                 //           fontSize: 10.0,
//                 //         ),
//                 //         border: OutlineInputBorder(),
//                 //        // icon: Icon(Icons.person_pin_circle)
//                 //         ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),
//                 //   Text(
//                 //     "جنس المرافق",
//                 //     style: TextStyle(
//                 //       fontFamily: 'Times New Roman',
//                 //       fontSize: 20,
//                 //       color: Colors.black,
//                 //       fontWeight: FontWeight.w700,
//                 //     ),
//                 //   ),
//                 //  SizedBox(height: 10.0,),
//                 //   TextField(
//                 //     //controller: fnameF,
//                 //     keyboardType: TextInputType.text,
//                 //     decoration: InputDecoration(
//                 //         contentPadding:
//                 //             const EdgeInsets.symmetric(vertical: 5.0),
//                 //         labelStyle: TextStyle(
//                 //           fontSize: 10.0,
//                 //         ),
//                 //         border: OutlineInputBorder(),
//                 //        // icon: Icon(Icons.person_pin_circle)
//                 //         ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),

//                 //   Text(
//                 //     "المدة",
//                 //     style: TextStyle(
//                 //       fontFamily: 'Times New Roman',
//                 //       fontSize: 20,
//                 //       color: Colors.black,
//                 //       fontWeight: FontWeight.w700,
//                 //     ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),
//                 //   TextField(
//                 //     //controller: fnameF,
//                 //     keyboardType: TextInputType.text,
//                 //     decoration: InputDecoration(
//                 //         contentPadding:
//                 //             const EdgeInsets.symmetric(vertical: 5.0),
//                 //         labelStyle: TextStyle(
//                 //           fontSize: 10.0,
//                 //         ),
//                 //         border: OutlineInputBorder(),
//                 //        // icon: Icon(Icons.person_pin_circle)
//                 //         ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),

//                 //   Text(
//                 //     "وقت البدء",
//                 //     style: TextStyle(
//                 //       fontFamily: 'Times New Roman',
//                 //       fontSize: 20,
//                 //       color: Colors.black,
//                 //       fontWeight: FontWeight.w700,
//                 //     ),
//                 //   ),

//                 //  SizedBox(height: 10.0,),
//                 //   TextField(
//                 //     //controller: fnameF,
//                 //     keyboardType: TextInputType.text,
//                 //     decoration: InputDecoration(
//                 //         contentPadding:
//                 //             const EdgeInsets.symmetric(vertical: 5.0),
//                 //         labelStyle: TextStyle(
//                 //           fontSize: 10.0,
//                 //         ),
//                 //         border: OutlineInputBorder(),
//                 //        // icon: Icon(Icons.person_pin_circle)
//                 //         ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),

//                 //   Text(
//                 //     "التاريخ",
//                 //     style: TextStyle(
//                 //       fontFamily: 'Times New Roman',
//                 //       fontSize: 20,
//                 //       color: Colors.black,
//                 //       fontWeight: FontWeight.w700,
//                 //     ),
//                 //   ),
//                 //   SizedBox(height: 10.0,),
//                 //   TextField(
//                 //     //controller: fnameF,
//                 //     keyboardType: TextInputType.text,
//                 //     decoration: InputDecoration(
//                 //         contentPadding:
//                 //             const EdgeInsets.symmetric(vertical: 5.0),
//                 //         labelStyle: TextStyle(
//                 //           fontSize: 10.0,
//                 //         ),
//                 //         border: OutlineInputBorder(),
//                 //         //icon: Icon(Icons.person_pin_circle
//                 //         ),
//                 //   ),
//                // ]
//                 //)

//     );
//   }
// }
