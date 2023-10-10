import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
    import 'signup.dart';
        import 'home.dart';

//import 'package:myapp/page-1/iphone-14-3.dart';
// import 'package:myapp/page-1/component-1.dart';
// import 'package:myapp/page-1/iphone-14-4.dart';
// import 'package:myapp/page-1/component-1-CWR.dart';
// import 'package:myapp/page-1/group-25.dart';
// import 'package:myapp/page-1/rectangle-13.dart';
// import 'package:myapp/page-1/rectangle-14.dart';
// import 'package:myapp/page-1/iphone-14-6.dart';
// import 'package:myapp/page-1/iphone-14-17.dart';
// import 'package:myapp/page-1/iphone-14-25.dart';
// import 'package:myapp/page-1/iphone-14-30.dart';
// import 'package:myapp/page-1/iphone-14-35.dart';
// import 'package:myapp/page-1/iphone-14-49.dart';
// import 'package:myapp/page-1/iphone-14-45.dart';
// import 'package:myapp/page-1/iphone-14-46.dart';
// import 'package:myapp/page-1/fluent-clipboard-bullet-list-rtl-20-regular.dart';
// import 'package:myapp/page-1/iphone-14-7.dart';
// import 'package:myapp/page-1/group-38.dart';
// import 'package:myapp/page-1/iphone-14-11.dart';
// import 'package:myapp/page-1/component-1-ZAD.dart';
// import 'package:myapp/page-1/iphone-14-14.dart';
// import 'package:myapp/page-1/iphone-14-12.dart';
// import 'package:myapp/page-1/component-1-E6y.dart';
// import 'package:myapp/page-1/rectangle-15.dart';
// import 'package:myapp/page-1/iphone-14-9.dart';
// import 'package:myapp/page-1/iphone-14-21.dart';
// import 'package:myapp/page-1/iphone-14-26.dart';
// import 'package:myapp/page-1/iphone-14-31.dart';
// import 'package:myapp/page-1/iphone-14-36.dart';
// import 'package:myapp/page-1/iphone-14-41.dart';
// import 'package:myapp/page-1/iphone-14-50.dart';
// import 'package:myapp/page-1/iphone-14-47.dart';
// import 'package:myapp/page-1/iphone-14-18.dart';
// import 'package:myapp/page-1/iphone-14-22.dart';
// import 'package:myapp/page-1/iphone-14-27.dart';
// import 'package:myapp/page-1/iphone-14-32.dart';
// import 'package:myapp/page-1/iphone-14-37.dart';
// import 'package:myapp/page-1/iphone-14-42.dart';
// import 'package:myapp/page-1/iphone-14-51.dart';
// import 'package:myapp/page-1/iphone-14-48.dart';
// import 'package:myapp/page-1/iphone-14-19.dart';
// import 'package:myapp/page-1/iphone-14-23.dart';
// import 'package:myapp/page-1/iphone-14-28.dart';
// import 'package:myapp/page-1/iphone-14-33.dart';
// import 'package:myapp/page-1/iphone-14-38.dart';
// import 'package:myapp/page-1/iphone-14-43.dart';
// import 'package:myapp/page-1/iphone-14-52.dart';
// import 'package:myapp/page-1/iphone-14-24.dart';
// import 'package:myapp/page-1/iphone-14-54.dart';
// import 'package:myapp/page-1/iphone-14-29.dart';
// import 'package:myapp/page-1/iphone-14-34.dart';
// import 'package:myapp/page-1/iphone-14-39.dart';
// import 'package:myapp/page-1/iphone-14-44.dart';
// import 'package:myapp/page-1/iphone-14-53.dart';
// import 'package:myapp/page-1/rectangle-17.dart';
// import 'package:myapp/page-1/rectangle-18.dart';
// import 'package:myapp/page-1/iphone-14-15.dart';
// import 'package:myapp/page-1/component-2.dart';
// import 'package:myapp/page-1/iphone-14-16.dart';
// import 'package:myapp/page-1/component-3.dart';
// import 'package:myapp/page-1/component-1-yNu.dart';
// import 'package:myapp/page-1/rectangle-19.dart';
// import 'package:myapp/page-1/rectangle-20.dart';
// import 'package:myapp/page-1/fluent-clipboard-bullet-list-rtl-20-regular-rfX.dart';
// import 'package:myapp/page-1/rectangle-21.dart';
// import 'package:myapp/page-1/rectangle-22.dart';
// import 'package:myapp/page-1/rectangle-23.dart';
// import 'package:myapp/page-1/component-2-eBw.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'fempower',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		
  routes:{
    'signup':(context)=>signup(),
        'home':(context)=>home(),

  },
  );
	}
}
