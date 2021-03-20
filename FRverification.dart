
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class FRverification extends StatelessWidget {
  @override
  static const String idScreen = 'FRverification';

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {});
  }

  String strStringData = "Hello Word";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' ',
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
            // Navigator.pushNamedAndRemoveUntil(
            //     context, NavCompanion.idScreen, (route) => false);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 0.0),
              child: Column(children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  iconSize: 36.0,
                  onPressed: () {
                    //Main interface Elderly
                    /*  Navigator.pushNamedAndRemoveUntil(
                         context, HomeElderly.idScreen, (route) => false); */
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
      body: Column(
         mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
  padding: EdgeInsets.fromLTRB(24, 32, 24, 32) ,

    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
    children: <Widget>[
    Container(
      height: 70.0,
   child:   IconButton(onPressed: (){
                _showChoiceDialog(context);
              },
                  color: Colors.blueAccent,
                  icon: Icon(Icons.camera_alt_rounded),
                  iconSize: 70.0),


      // child:  RaisedButton(
      //           color: Colors.green[600],
      //           padding: EdgeInsets.only(left: 50.0, right: 50.0),
      //           splashColor: Color(0xffffffff),
      //           child: Text(
      //             'تاكيد',
      //             style: TextStyle(
      //               fontFamily: 'Times New Roman',
      //               fontSize: 20,
      //               color: Colors.white,
      //               fontWeight: FontWeight.w700,
      //             ),
      //           ),
      //           onPressed: () {
      //             // Navigator.pushNamedAndRemoveUntil(context,
      //             //     RegistryElderlyScreen.idScreen, (route) => false);
      //           },
      //         ),
    ),
    
    // Container(
    //   height: 70.0,
    // child:  RaisedButton(
    //             color: Colors.blue[900],
    //             padding: EdgeInsets.only(left: 30.0, right: 30.0),
    //             splashColor: Color(0xffffffff),
    //             child: Text(
    //               ' آعادة التقاط',
    //               style: TextStyle(
    //                 fontFamily: 'Times New Roman',
    //                 fontSize: 20,
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.w700,
    //               ),
    //             ),
    //             onPressed: () {
    //               // Navigator.pushNamedAndRemoveUntil(context,
    //               //     RegistryElderlyScreen.idScreen, (route) => false);
    //             },
    //           ),
    // ),
    ],
  ),
   ),
],
      ),
    );
  }
}