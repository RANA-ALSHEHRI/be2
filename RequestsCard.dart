import 'package:flutter/material.dart';
import 'package:be/AllScreens/Request/commonButtons.dart';

class RequestsCard{
  static Widget serviceRequestCard({
    BuildContext context,
    String image,
    String name,
    String code,
    String direction,
    String duration,
    String startTime,
    Function onDetailsPressed,
    Function onAcceptPressed,
    Function onIgnorePressed,
  }) {
    final size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.grey)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Row(
                children: [
                  CommonCachedImageWidget.circleCachedImage(
                      context, image, size.height * 0.1, size.height * 0.1),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(name,
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                              Text(code),
                            ],
                          ),
                          commonMainRow('الوجهة: ', direction),
                          commonMainRow('المدة: ', duration),
                          commonMainRow('وقت البدء: ', startTime),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CommonButtons.signButton(
              // ???????
                btnColor: SharedText.mainColor,
                context: context,
                text: 'عرض تفاصيل الطلب',
                height: 40.0,
                fontSize: size.height * 0.02,
                onPressed: onDetailsPressed),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: CommonButtons.acceptOrCancelButton(
                  btnColor: Colors.green,
                  context: context,
                  text: 'قبول',
                  height: 40.0,
                  fontSize: size.height * 0.02,
                  onPressed: onAcceptPressed),
            ),
          ],
        ),
      ),
    );
  }
  static Widget commonMainRow(String title, String subtitle) {
    return Row(
      children: [
        Text(title, style: TextStyle(color: Colors.grey[700])),
        Expanded(child: Text(subtitle, style: TextStyle(color: Colors.grey))),
      ],
    );
  }
}//THE END OF THE CLASS

// children: [
// Container(
// //margin: EdgeInsets.all(10),
// margin: EdgeInsets.only(right: 10, top: 10),
// child: Text(
// "اليوم",
// style: TextStyle(
// fontSize: 20,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// ),
//
// SizedBox(
// width: 200.0,
// height: 15,
// ),
// // main container
// Container(
// width: 300.0,
// height: 280.0,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(10.0),
// topRight: Radius.circular(10.0),
// bottomLeft: Radius.circular(10.0),
// bottomRight: Radius.circular(10.0)),
// boxShadow: [
// BoxShadow(
// color: Colors.black,
// blurRadius: 10.0,
// spreadRadius: 0.5,
// offset: Offset(0.7, 0.7),
// ),
// ],
// ),
// // C1 (
// child: Column(
// children: <Widget>[
// Row(
// // r1
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.end,
//
// children: <Widget>[
// // The Request Info
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: <Widget>[
// Container(
// //margin: EdgeInsets.all(10),
// margin: EdgeInsets.only(right: 10, top: 10),
// child: Text(
// "رقم الطلب",
// style: TextStyle(
// fontSize: 18,
// color: Colors.grey,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// ),
// Text(
// "صاحب الطلب",
// style: TextStyle(
// fontSize: 18,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// Text(
// "الوجهة",
// style: TextStyle(
// fontSize: 18,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// Text(
// "المدة",
// style: TextStyle(
// fontSize: 18,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// Text(
// "وقت البدء",
// style: TextStyle(
// fontSize: 18,
// fontFamily: 'Times New Roman',
// fontWeight: FontWeight.bold),
// textAlign: TextAlign.right,
// ),
// ],
// ),
// flex: 4,
// ),
// // Here to display the eldelry image if found
// //                  Image(
// //                    //Image.network("here put the URL"),
// //                  ),
// // If there's now photo to display the display empty icon
// Expanded(
// child: Container(
// //margin: EdgeInsets.all(10),
// margin: EdgeInsets.only(top: 10, bottom: 30),
// padding: EdgeInsets.all(10),
// //decoration: BoxDecoration(
// //borderRadius: BorderRadius.circular(30),
// //border: Border.all(width: 2, color: Colors.grey)),
// child: Icon(
// Icons.person,
// size: 40,
// color: Colors.grey,
// ),
// ),
// flex: 3,
// ),
// ],
// ),
// // Display Request Details Button
// SizedBox(height: 10.0),
// RaisedButton(
// color: Colors.indigo,
// padding: EdgeInsets.only(left: 80.0, right: 80.0),
// splashColor: Color(0xffffffff),
// //    child: Container(
// //  height: 50.0,
// // child: Center(
// child: Text(
// 'عرض تفاصيل الطلب',
// style: TextStyle(
// fontFamily: 'Times New Roman',
// fontSize: 20,
// color: Colors.white,
// fontWeight: FontWeight.w700,
// ),
// //textAlign: TextAlign.center,
// ),
// // ),
// // ),
// onPressed: () {
// // Navigator.pushNamedAndRemoveUntil(context,
// //     RegistryElderlyScreen.idScreen, (route) => false);
// },
// ),
//
// Row(
// // r2
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// SizedBox(
// height: 10.0,
// ),
// RaisedButton(
// color: Colors.red,
// padding: EdgeInsets.only(left: 50.0, right: 50.0),
// splashColor: Color(0xffffffff),
// //    child: Container(
// //  height: 50.0,
// // child: Center(
// child: Text(
// 'رفض',
// style: TextStyle(
// fontFamily: 'Times New Roman',
// fontSize: 20,
// color: Colors.white,
// fontWeight: FontWeight.w700,
// ),
// //textAlign: TextAlign.center,
// ),
// // ),
// // ),
// onPressed: () {
// // Navigator.pushNamedAndRemoveUntil(context,
// //     RegistryElderlyScreen.idScreen, (route) => false);
// },
// ),
// SizedBox(height: 10.0,
// width: 20,),
// RaisedButton(
// color: Colors.lightGreen[700],
// padding: EdgeInsets.only(left: 50.0, right: 50.0),
// splashColor: Color(0xffffffff),
// //    child: Container(
// //  height: 50.0,
// // child: Center(
// child: Text(
// 'قبول',
// style: TextStyle(
// fontFamily: 'Times New Roman',
// fontSize: 20,
// color: Colors.white,
// fontWeight: FontWeight.w700,
// ),
// //textAlign: TextAlign.center,
// ),
// // ),
// // ),
// onPressed: () {
// //
// Navigator.pushNamedAndRemoveUntil(context,
// FRverification.idScreen, (route) => false);
// },
// ),
// ]),
// ],
// ),
// ),
// ],