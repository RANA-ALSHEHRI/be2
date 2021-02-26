import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class F extends StatefulWidget {
  @override
    static const String idScreen = 'F';
  _FState createState() => _FState();
}

class _FState extends State<F> {

  File imageFile;

  _openGallary(BuildContext context)async{
// ignore: deprecated_member_use
    var pictures = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile= pictures;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
// ignore: deprecated_member_use
    var pictures = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile= pictures;
    });
    Navigator.of(context).pop();
  }



  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("اختار الصورة"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("معرض الصور"),
                onTap: (){
                  _openGallary(context);
                },
              ),
              Padding(padding:EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("الكاميرا"),
                onTap: (){
                  _openCamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _decideImageView(){
    if(imageFile==null){
      return Text("لا توجد صورة محددة ");
    }else{
      Image.file(imageFile,width:4000 ,height: 4000);
    }
  }
  void _onPressed() {
    debugPrint("I'm pressed");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Icon(Icons.report,
          size: 40.0,
          color: Colors.black,
          semanticLabel: "Text to announce in accessibility",
        ),
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        centerTitle: true,

        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.east),
              color: Colors.black,
              iconSize: 40.0,
              onPressed: _onPressed),
        ],

      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _decideImageView(),

              IconButton(onPressed: (){
                _showChoiceDialog(context);
              },
                  color: Colors.blueAccent,
                  icon: Icon(Icons.camera_alt_rounded),
                  iconSize: 70.0),



            ],
          ),
        ),
      ),
    );
  }
}