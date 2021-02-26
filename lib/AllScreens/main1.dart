import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:be/AllScreens/ElderlyScreen/ElderlySendReq2.dart';
import 'package:be/AllScreens/ElderlyScreen/HomeElderly.dart';
import 'package:be/AllScreens/ReqCom1-elderly.dart';
import 'package:google_maps_webservice/places.dart';
//import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/AllScreens/registryScreen.dart';
import 'package:be/Maps.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'ElderlyScreen/registryElderly.dart';

class Main1Screen extends StatefulWidget {
  // This widget is the root of your application.
  static const String idScreen = 'main1Screen';
  @override
  _Main1ScreenState createState() => _Main1ScreenState();
}

class _Main1ScreenState extends State<Main1Screen> {
  double mapPadding = 0;
  Completer<GoogleMapController> _controller = Completer();

  // changing location / elderly
  GoogleMapController newController;
  // to get user Position latitude and longitude
  Position currentPosition;
  //instant
  var geoLocator = Geolocator();
  
  //fun.
  void locatePosition() async {
    // to get current location of the device
   
    Position position =  // Position: Contains detailed location information.
    await Geolocator.getCurrentPosition( //getCurrentPosition: Returns the current position
    desiredAccuracy: LocationAccuracy.high); //desiredAccuracy: the accuracy of the location data

    currentPosition = position; 
    //latitude and longitude
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    // to move camera according to device position
    CameraPosition cameraPosition =
        new CameraPosition(target: latLatPosition, zoom: 14);
    newController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  //Initial camera position for testing the code
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text('BE MY MATE',
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
                  onPressed: () {//   
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeElderly.idScreen, (route) => false);
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
              padding: EdgeInsets.only(top: mapPadding),
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
                newController = controller;
              //Call locatePosition() here to display user location on the map.
                locatePosition();
              }
              ),

          Positioned(
            left: 0.0,
            right: 0.0,
            // bottom: 0.0,
            top: 11.0,
            child: Container(
              height: 100.0,
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
                  Text("حدد وجهتك ",
                      //textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  TextField(
                    onChanged: (val) {
                      findPlace(val);
                    },
//                         onTap: () async{
// Prediction p = await PlacesAutocomplete.show(
//                           context: context,
//                           apiKey: "AIzaSyDUoCOTz-y1vQ1ixdtbHRtrf7CdtRtqRik",
//                           mode: Mode.overlay, // Mode.fullscreen
//                           language: "fr",
//                           components: [new Component(Component.country, "fr")]);
                          // Prediction p = await PlacesAutocomplete.show(context: context, apiKey: "AIzaSyDUoCOTz-y1vQ1ixdtbHRtrf7CdtRtqRik",
                          // language: "pt", components: [
                          //   Component(Component.country, "mz")
                          // ]
                          // );
                       // },
                    //controller: fnameF,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.5),
                        labelText: "ابحث ",
                        labelStyle: TextStyle(
                          fontSize: 30.0,
                        ),
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.search)),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   mainAxisSize: MainAxisSize.max,
                  //   //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     SizedBox(width: 10.0),

                  //     // Text("search drop off"),
                  //     // Icon(
                  //     //   Icons.search,
                  //     //   size: 30.0,
                  //     //   color: Colors.grey,
                  //     // ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          //SizedBox(width: 100.0),

          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            //top: 11.0,
            child: Container(
              height: 160.0,
              child: Column(
                children: [
                  RaisedButton(
                    color: Color(0xff0045b0),
                    padding: EdgeInsets.only(left: 90.0, right: 90.0),
                    splashColor: Colors.blue,
                    child: Container(
                      // height: 50.0,
                      // child: Center(
                      child: Text(
                        ' التالي',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 30,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ),
                    // ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          ElderlySendReq2.idScreen, (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void findPlace(String placeName) async {
    if (placeName.length > 1) {
      String autoCompleteUrl =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$mapKey&sessiontoken=1234567890&components=country:sb";
      var res = await RequestAssistant.getRequest(autoCompleteUrl);
      //\ getReqest
      if (res == 'failed') {
        return;
      }
      print("object");
      print(res);
    }
  }
}
