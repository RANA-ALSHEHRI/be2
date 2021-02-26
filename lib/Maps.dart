import 'dart:convert';

import 'package:http/http.dart' as http;
String mapKey ="AIzaSyDUoCOTz-y1vQ1ixdtbHRtrf7CdtRtqRik";
class RequestAssistant {
  static Future<dynamic> getRequest(String url) async{
  http.Response response = await http.get(url);
 try{
 if(response.statusCode==200){
 String jSonDate = response.body;
 var decodeDate = jsonDecode(jSonDate);
return decodeDate;
  }
  else {
  return "failed, No response.";  
  }
  

 }catch(exp){
return "failed,";  

 }
  }
}

