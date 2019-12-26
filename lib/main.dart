import 'package:diseno_facil/src/pages/basico_page.dart';
import 'package:diseno_facil/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'scroll',
      routes: {
        'basico'  : (BuildContext context)=> BasicoPage(),
        'scroll'  : (BuildContext context)=> ScrollPage(),
      },
      
    );
  }
}