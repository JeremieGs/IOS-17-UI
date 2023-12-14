import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ios_ui/home.dart';
import 'package:ios_ui/widget/notification.dart';
class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  late String date='Mercredi 13 decembre' ;
  void Getdate(){
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE dd MMMM', 'fr_FR').format(now);
    setState(() {
      date=formattedDate;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          // Naviguer vers la deuxième page avec une animation de descente
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return HomeScree();
              },
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          );
        }
      },
      child: Scaffold(
        body: Container(
          width:screenWidth ,
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/wallpape3.png',),fit: BoxFit.fill)
          ),
          child: Stack(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bouyouges",style:GoogleFonts.roboto(color: Colors.white.withOpacity(0.9) ,fontSize: screenWidth*0.04),),
                      Column(
                        children: [
                          Row(
                            children: [
                            Icon(const IconData(0xf38a, fontFamily: 'MaterialIcons',),color: Colors.white,size: screenWidth*0.05,),
                              SizedBox(width: 7,),
                              Icon(CupertinoIcons.wifi,color: Colors.white,size: screenWidth*0.055),
                              SizedBox(width: 7,),
                              Icon(CupertinoIcons.battery_75_percent,color: Colors.white,size: screenWidth*0.05)
                            ],
                          ),
                          SizedBox(height: 4,),
                          Container(
                            width: screenWidth*0.15,
                            height: 2.3,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Text(date,style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.9),fontSize: screenWidth*0.05,)),
                Text("01:32",style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.8),fontSize: screenWidth*0.25,)),
                NotificationWidget()
              ],
            ),
            Positioned(
               bottom: 0,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,bottom: 50),
                      child: Container(
                        width: screenWidth*0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: Container(
                                  height: screenWidth*0.15,
                                  width: screenWidth*0.15,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.flashlight_on_sharp,color: Colors.white,),
                                ),
                              ),
                            ),
                            ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: Container(
                                  height: screenWidth*0.15,
                                  width: screenWidth*0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(CupertinoIcons.camera_fill,color: Colors.white,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: screenWidth*0.4,
                        height: screenWidth*0.015,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
          ),
        ),
      ),
    );
  }
}
