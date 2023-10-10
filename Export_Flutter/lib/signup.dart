

import 'package:flutter/material.dart';
import 'api.dart';
TextEditingController name =TextEditingController();
TextEditingController phone =TextEditingController();
TextEditingController service_d =TextEditingController();

apis api =api;
signup() async{
  var response =await api.postRequest(api1, {
 'username':name.text,
  'phone':phone.text,
 'service_d':service_d.text,
  });
  if(response['status']=='success'){
    Navigator.of(context).pushNamedAndRemoveUntil
    ('home', (route) => false);
  }
  else{print('failed to signup');}
}}
class signupPage extends StatefulWidget {
  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _serviceDescriptionController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _mobileNumberController.dispose();
    _serviceDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 100;
    double ffem = MediaQuery.of(context).size.width / 360;
  
    return Scaffold(
      appBar: AppBar(
        title: Text('signup'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffefd1d8)),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 3.390625 * fem),
                    blurRadius: 1.6953125 * fem,
                  ),
                ],
              ),

              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter your username',
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _mobileNumberController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a mobile number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Mobile number',
                          hintText: 'Enter your mobile number',
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _serviceDescriptionController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a service description';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Service description',
                          hintText: 'Enter your service description',
                        ),
                      ),
                      SizedBox(height: 16.0),
          
                      
              
                      MaterialButton(
                     // RaisedButton(
                        onPressed: () async{ 
                          await signup();
                    
                        },
                        child: Text('signup'),
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: EdgeInsets.fromLTRB(60 * fem, 0 * fem, 59 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 63 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffe4c2ca),
                    borderRadius: BorderRadius.circular(90 * fem),
                  ))))
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
        ['data']['name']['phone']['age']['sdesc']})
        });
        })
        );
      }
      )
  }
}
)

//     RaisedButton(
//   onPressed: () async {
//     if (_formKey.currentState.validate()) {
//       // send data to API
//       final response = await http.post(
//         Uri.parse('http://localhost/google/public/api/postregister'),
//         body: {
//           'username': _usernameController.text,
//           'mobile_number': _mobileNumberController.text,
//           'service_description': _serviceDescriptionController.text,
//         },
//       );

//       // check response status code
//       if (response.statusCode == 200) {
//         // successful registration, do something
//       } else {
//         // registration failed, handle error
//       }
//     }
//   },
//   child: Text('signup'),
// ), 


