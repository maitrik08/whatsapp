import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/Androidscreen.dart';
import 'package:whatsapp/IOSScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider<UpdateModel>(create: (context) => UpdateModel()),
          ChangeNotifierProvider<ISOProvider>(create: (context) => ISOProvider()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Customize as needed
      ),
      home: Androidscreen(),
    );
  }
}