
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




class Frcompanion extends StatefulWidget {
    static const String idScreen = 'frcompanion';

  @override
  _frcompanionState createState() => _frcompanionState();
}

class _frcompanionState extends State<Frcompanion> {
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(' ',)
      ),
      body: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                 _decideImageView(),

            RaisedButton(onPressed: (){
              _showChoiceDialog(context);
            },child: Text('اختر صورة'),)

              ],
            ),
          ),
      ),
    );
  }
}


