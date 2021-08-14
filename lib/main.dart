import 'package:flutter/material.dart';
import 'package:social_media_app/screens/login_page.dart';
import './screens/home_screen.dart';
import 'models/routes.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socio',
      theme: ThemeData(
        primaryColor: Colors.yellow[700],
      ),
      home:
      SplashScreen(
        backgroundColor: Colors.yellow[600],
        
        image:Image.asset("assets/images/navicon.png",
       ),
        photoSize: 200.0,
        loaderColor: Colors.white,
        //photoSize: double.infinity,
        // loadingText:const Text("Socio",
        // style: TextStyle(
        //   fontSize: 25
        // ),) ,
       // photoSize: double.infinity,
        navigateAfterSeconds: MyRoutes.loginRoute,
        seconds: 4,
      ),
      //initialRoute: MyRoutes.loginRoute,
      routes: {
        // "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
