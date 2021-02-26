import 'package:flutter/material.dart';
import 'package:be/AllScreens/FamilyScreen/NotificationFamily.dart';
import 'package:be/AllScreens/FamilyScreen/ProfileFamily.dart';
import 'package:be/AllScreens/FamilyScreen/HomeFamily.dart';
class NavFamily extends StatefulWidget {
  static const String idScreen = 'NavFamily';

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavFamily> {

  static int theCurrentIndex = 1; // the default index
  List<Widget> _widgetOptions = <Widget>[
    ProfileFamily(), // Index 0
    HomeFamily(), // Index 1
    NotificationFamily(), // Index 2
  ];

  void _onItemTap(int index) {
    setState(() {
      theCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(theCurrentIndex),
      ),

      //------------------------------------------------------------------------
      // The bottom bar for the companion main interfaces
      //------------------------------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
          items: [
            // --- The user profile interface ---
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
              //title: Text('صفحتي'),
            ),
            // --- The home interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: 'الرئيسية',

              //title: new Text('الرئيسية'),
            ),
            // --- The notification interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_alert),
              label: 'التنبيهات',
              //title: new Text('التنبيهات'),
            ),
          ],
          currentIndex: theCurrentIndex, // this will be set when a new tab is tapped
          onTap: _onItemTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black,
          iconSize: 45,
          selectedFontSize: 18,
          //selectedLabelStyle: TextStyle.,
          unselectedFontSize: 18,
//          onTap: (index){
//            setState((){
//                theCurrentIndex = index;
//            });
//          },
          elevation: 5
      ),
    );
  }
}