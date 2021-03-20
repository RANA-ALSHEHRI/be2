import 'package:flutter/material.dart';

// Change the settings and designs of the buttons
class CommonButtons {
  static Widget signButton(
      {BuildContext context,
        Function onPressed,
        String text,
        Color textColor,
        Color btnColor,
        double fontSize,
        double height}) {
    final size = MediaQuery.of(context).size;
    btnColor = btnColor ?? Colors.black;

    return MaterialButton(
      onPressed: onPressed,
      color: btnColor,
      textColor: Colors.white,
      height: height ?? size.height * 0.1,
      minWidth: size.width * 0.8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width * 0.02)),
      child: Text(text,
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? size.height * 0.025)),
    );
  }

  static Widget acceptOrCancelButton(
      {BuildContext context,
        Function onPressed,
        String text,
        Color btnColor,
        double fontSize,
        double height,
        double width}) {
    final size = MediaQuery.of(context).size;
    btnColor = btnColor ?? Colors.black;

    return MaterialButton(
      onPressed: onPressed,
      color: btnColor,
      textColor: Colors.white,
      height: height ?? size.height * 0.1,
      minWidth: width ?? size.width * 0.3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width * 0.02)),
      child: Text(text,
          style: TextStyle(fontSize: fontSize ?? size.height * 0.025)),
    );
  }

  static Widget adminSmallButton(
      {BuildContext context, Function onPressed, String text, Color btnColor}) {
    final size = MediaQuery.of(context).size;
    btnColor = btnColor ?? Colors.black;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size.width * 0.175,
        height: 40.0,
        child: Card(
          color: btnColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.width * 0.02)),
          child:
          Center(child: Text(text, style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }

  static Widget oldManMainButton(
      {BuildContext context,
        Function onPressed,
        String text,
        Color btnColor,
        IconData iconData,
        double fontSize,
        double height}) {
    final size = MediaQuery.of(context).size;
    btnColor = btnColor ?? Colors.black;

    return MaterialButton(
      onPressed: onPressed,
      color: btnColor,
      textColor: Colors.white,
      height: height ?? size.height * 0.1,
      minWidth: size.width * 0.8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width * 0.02)),
      child: Row(
        children: [
          Icon(iconData, color: Colors.black, size: 30.0),
          Expanded(
            child: Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize ?? size.height * 0.025)),
          ),
        ],
      ),
    );
  }
}
