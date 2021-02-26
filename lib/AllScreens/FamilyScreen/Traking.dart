import 'dart:async';

import 'package:be/AllScreens/FamilyScreen/NavFamily.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/MainLoginScreen.dart';
import 'package:be/AllScreens/registryScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrakingFamilyScreen extends StatelessWidget {
  static const String idScreen = "TrakingFamilyScreen";
  //Initial camera position for testing the code
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' التعقب',
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
                     Navigator.pushNamedAndRemoveUntil(
                         context, NavFamily.idScreen, (route) => false);
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
       body: Stack(
        children: <Widget>[
          
          GoogleMap(
           // padding: EdgeInsets.only(top: mapPadding),
              mapType: MapType.normal,
              //my-location button causes the camera to move such that the users location is in the center of the map.
              myLocationButtonEnabled: true,
              initialCameraPosition: _kGooglePlex,
              //blue dot 
              myLocationEnabled: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
             //   newController = controller;
              //  setState(() {
              //    mapPadding=265.0;
              //  });
              //   locatePosition();
              }
             
              ),
        ],
        ),
      
      );
  }
}

