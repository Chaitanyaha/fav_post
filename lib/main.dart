import 'package:flutter/material.dart';

import './home.dart';
import './page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'HOME',
      theme: ThemeData.dark(
        
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/a': (context)=>PageTwo(),
      },
    );
  }
}
