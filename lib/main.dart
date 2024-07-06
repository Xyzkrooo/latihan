import 'package:flutter/material.dart';

import 'package:myapp/page/home_page.dart';
import 'package:myapp/page/flora_page.dart';
import 'package:myapp/page/fauna_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/home': (context)=> HomePage(),
        '/flora': (context)=> ListFlora(),
        '/fauna': (context)=> ListFauna(),
      },
      initialRoute: '/home',
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}