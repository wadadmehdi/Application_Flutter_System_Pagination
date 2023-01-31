import 'package:apk1/ui/pages/counter.page.dart';
import 'package:apk1/ui/pages/gallery.page.dart';
import 'package:apk1/ui/pages/home.page.dart';
import 'package:apk1/ui/pages/mateo.page.dart';
import 'package:flutter/material.dart';



void main () => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/home":(context)=>HomePage(),
        "/meteo":(context)=>MeteoPage(),
        "/gallery":(context)=>GalleryPage(),
        "/counter":(context)=>CounterPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      initialRoute: "/home",
      home: HomePage(),
    );
  }
}






