import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Ajustez le flou selon vos préférences
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xff0f62b8),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(FontAwesomeIcons.linkedinIn,color: Colors.white,size:screenWidth*0.07 ,)
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: screenWidth*0.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Recommandation pour vous",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: screenWidth*0.04),),
                                  Text("il ya 39 min",style: GoogleFonts.roboto(),),
                                ],
                              ),
                              Text("Des personnes ayant des centres d'interet similaires suivent 😎 Rayan.. Abonnez-vous pour voir les posts",style: GoogleFonts.roboto(fontSize: screenWidth*0.04))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Ajustez le flou selon vos préférences
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff0f62b8),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(FontAwesomeIcons.linkedinIn,color: Colors.white,size:screenWidth*0.07 ,)
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: screenWidth*0.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("LinkedIn",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: screenWidth*0.04),),
                                  Text("hier 23:30",style: GoogleFonts.roboto(),),
                                ],
                              ),
                              Text("AGODJI jeremie à accepté votre demande",style: GoogleFonts.roboto(fontSize: screenWidth*0.04),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Ajustez le flou selon vos préférences
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(FontAwesomeIcons.whatsapp,color: Colors.white,size:screenWidth*0.07 ,)
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: screenWidth*0.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("David",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: screenWidth*0.04),),
                                  Text("hier 18:30",style: GoogleFonts.roboto(),),
                                ],
                              ),
                              Text("Notification",style: GoogleFonts.roboto(fontSize: screenWidth*0.04),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
