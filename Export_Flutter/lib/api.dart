import'package:http/http.dart'as http;
import 'dart:convert';

// api link for take data in registration
const String api1 ='localhost/google/public/api/postregister';
// api link to show data from database
const String api2 ='localhost/google/public/api/home';

//for method get
class apis {
  getRequest (String url) async{
    try{
      var response = await http.get(Uri.parse(url));
      if (response.statusCode ==200)
      {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      }
      else
      {
        print("error ${response.statusCode}");
      }
    }
      catch(e)
      {
      print('error catch $e');
    }
  }

//for method post

  postRequest (String url, Map data) async{
    try{
      //data is the request as name and phone written by who signup
      var response = await http.post(Uri.parse(url), body:data);
      if (response.statusCode ==200)
      {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      }
      else
      {
        print("error ${response.statusCode}");
      }
    }
      catch(e)
      {
      print('error catch $e');
    }
  }
}