import 'package:cinehubproject/ApiConcert/homepage6.dart';
import 'package:flutter/material.dart';
import 'ApiCine/homepage1.dart';
import 'ApiFormat/homepagefive.dart';
import 'ApiTeaser/homepage2.dart';
import 'ApiTeaser2/homepage7.dart';
import 'ApiTheatrelist/homepage4.dart';
import 'ApiTheatrelist2/homepage9.dart';
import 'ApiTrailer/homepage3.dart';
import 'Apiconcert1/homepage12.dart';
import 'Apiconcetlist/homepage10.dart';
import 'ApiloginPage/Splashscreen.dart';
import 'ApiloginPage/loginpage.dart';
import 'Apiteaser1/homepage13.dart';
import 'ApiteaserList/homepage11.dart';
import 'Apitrailer1/homepage15.dart';
import 'Apitrailer3/homepage16.dart';
import 'Apitrailerlist/homepage14.dart';
 // Adjust the path as needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All page in Movie Ticket Booking App',
      debugShowCheckedModeBanner: false,
      //home: HomePageOne(),
      //home: HomePageTwo(),
      //home: HomePageThree(),
      //home: HomePageFour(),
      //home: HomePagefive(),
      //home:HomePageSix(),
       //home:Homepageseven(),
      //home:HomePagenine(),
     // home: Homepageten(),
      // home: Homepageeleven(),
      home: SplashScreen(),
      //   home: HomePage12(),
        // home: HomePage13(),
      //home: Homepage14(),
      //home: HomePage15(),
      //home: HomePage16(),
    );
  }
}