import 'package:flutter/widgets.dart';


import 'api.dart';
apis api =api;
getdata() async{
  var response =await api.getRequest(api2);
  return response;
}

class homePage extends StatefulWidget {
  @override
}

FutureBuilder(
Future:getdata(),
Builder:(BuildContext context, AsyncSnapshop snapshot)
{
  if (snapshot.hasData){
    return ListView.builder(
      itemCount: snapshot.data['data'].length,
      itemBuilder: (context){
        return text('${snapshot.data
        ['data']['name']['phone']['age']['sdesc']
        })
        });
        })