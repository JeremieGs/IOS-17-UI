import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_ui/parametre.dart';
import 'package:ios_ui/widget/app.dart';
import 'package:ios_ui/widget/appimage.dart';
import 'package:ios_ui/widget/image.dart';
import 'package:ios_ui/widget/searchpage.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class HomeScree extends StatefulWidget {
  const HomeScree({super.key});

  @override
  State<HomeScree> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    return Scaffold(
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
              Expanded(
                child: PageView(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                          child: Column(
                            children: [
                              Container(
                                height: screenWidth*0.4,
                                child: PageView(
                                  children: [
                                    ImageWidget(url: 'assets/images/wallpaper2.png',),
                                    ImageWidget(url: 'assets/images/image.webp',),
                                    ImageWidget(url: 'assets/images/image2.webp',),
                                  ],
                                ),
                              ),
                              Text("widgetsmith",style: GoogleFonts.roboto(color: Colors.white),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                              child: GridView(
                                shrinkWrap: false,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.8,
                                ), // Nombre total d'éléments dans le GridView
                                children: [
                                  /*Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AppWidget(icon: CupertinoIcons.video_camera_solid,color: Color(0xff4cea68),),
                                      ),
                                      Text("Face time",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  )
                                  , Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AppWidget(icon: CupertinoIcons.timelapse,color: Color(
                                            0xff1bb3f9),),
                                      ),
                                      Text("Face time",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AppWidget(icon: CupertinoIcons.music_note_2,color: Color(
                                            0xfff93d55),),
                                      ),
                                      Text("Face time",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),*/
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/time.png',name: 'horloge',),
                                      ),
                                      Text("Time",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  )
                                  ,Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: AppImageWidget(url: 'assets/images/tv.png',name: 'apple tv',),
                                          ),
                                          Positioned(
                                            right:0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              radius: 15,
                                              child: Text("3",style: GoogleFonts.roboto(color:Colors.white,fontSize: screenWidth*0.04),),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("Apple Tv",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/podcast.png',name: 'podcast'),
                                      ),
                                      Text("Podcasts",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),GestureDetector(
                                    onTap:(){Get.to(ParametreScreen());},
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: AppImageWidget(url: 'assets/images/reglages.jpg',name: 'reglage'),
                                        ),
                                        Text("Réglages",style: GoogleFonts.roboto(color: Colors.white))
                                      ],
                                    ),
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/calender.png',name: 'calendrier'),
                                      ),
                                      Text("Calendrier",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/chrome.png',name: 'chrome'),
                                      ),
                                      Text("Chrome",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/contact.png',name: 'contacts'),
                                      ),
                                      Text("Contact",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/forme.png',name: 'forme'),
                                      ),
                                      Text("Forme",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/livre.jpg',name: 'books'),
                                      ),
                                      Text("Books",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/localiser.jpg',name: 'localiser'),
                                      ),
                                      Text("Localiser",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/meteo.jpg',name: 'meteo'),
                                      ),
                                      Text("Meteo",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: AppImageWidget(url: 'assets/images/raccourcis.png',name: 'rccourcis'),
                                          ),
                                          Positioned(
                                            right:0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              radius: 15,
                                              child: Text("4",style: GoogleFonts.roboto(color:Colors.white,fontSize: screenWidth*0.04),),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("Raccourcis",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),

                                ],
                              )
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                          child: Column(
                            children: [
                              Container(
                                height: screenWidth*0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  gradient: LinearGradient(colors: [Color(0xff1c558f),Color(0xff749bc3)],begin: Alignment.topCenter,end: Alignment.bottomCenter,)
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Sans Francisco",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.04),),
                                                  Icon(CupertinoIcons.location_fill,color: Colors.white,size: screenWidth*0.04,)
                                                ],
                                              ),
                                              Text("24°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.12))
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("Sunny",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Text("H:69° L:51°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.037))
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("10 AM",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035)),
                                              Icon(CupertinoIcons.sun_max_fill,color: Color(0xfffdcb02),size: screenWidth*0.04,),
                                              Text("25°",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.035,fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ),
                              Text("weather",style: GoogleFonts.roboto(color: Colors.white),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                  child: Container(
                                    height: screenWidth*0.50,
                                    width: screenWidth*0.45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color:Colors.white.withOpacity(0.5)
                                    ),
                                    child: GridView(
                                      shrinkWrap: false,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 0.9,
                                      ),
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 40,
                                          backgroundColor: Colors.white.withOpacity(0.5),
                                         percent: 0.9,
                                          progressColor: Color(0xff30c85a),
                                          restartAnimation: true,
                                          animation: true,
                                          lineWidth: screenWidth*0.02,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Icon(CupertinoIcons.device_phone_portrait,size: screenWidth*0.08,),
                                        ),
                                        CircularPercentIndicator(
                                          radius: 40,
                                          backgroundColor: Colors.white.withOpacity(0.5),
                                          percent: 0.8,
                                          progressColor: Color(0xff30c85a),
                                          restartAnimation: true,
                                          animation: true,
                                          lineWidth: screenWidth*0.02,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Icon(CupertinoIcons.headphones,size: screenWidth*0.08,),
                                        )
                                        ,CircularPercentIndicator(
                                          radius: 40,
                                          backgroundColor: Colors.white.withOpacity(0.5),
                                          percent: 0.7,
                                          progressColor: Color(0xfffa9e0a),
                                          restartAnimation: true,
                                          animation: true,
                                          lineWidth: screenWidth*0.02,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Icon(Icons.watch,size: screenWidth*0.08,),
                                        ),CircularPercentIndicator(
                                          radius: 40,
                                          backgroundColor: Colors.white.withOpacity(0.5),
                                          percent: 0.2,
                                          progressColor: Color(0xfffb3b31),
                                          restartAnimation: true,
                                          animation: true,
                                          lineWidth: screenWidth*0.02,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: Icon(CupertinoIcons.device_phone_portrait,size: screenWidth*0.08,),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: screenWidth*0.55,
                                width: screenWidth*0.45,
                                child: GridView(
                                  shrinkWrap: false,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.8,
                                  ),
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: AppImageWidget(url: 'assets/images/note.png',name: 'horloge',),
                                        ),
                                        Text("Notes",style: GoogleFonts.roboto(color: Colors.white))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: AppImageWidget(url: 'assets/images/camera.png',name: 'horloge',),
                                        ),
                                        Text("Camera",style: GoogleFonts.roboto(color: Colors.white))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: AppImageWidget(url: 'assets/images/bourse.jpg',name: 'horloge',),
                                        ),
                                        Text("Bourse",style: GoogleFonts.roboto(color: Colors.white))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: AppImageWidget(url: 'assets/images/tiktok.png',name: 'horloge',),
                                        ),
                                        Text("Tiktok",style: GoogleFonts.roboto(color: Colors.white))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                              child: GridView(
                                shrinkWrap: false,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.8,
                                ), // Nombre total d'éléments dans le GridView
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/uber.png',name: 'horloge',),
                                      ),
                                      Text("Uber",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  )
                                  ,Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: AppImageWidget(url: 'assets/images/youtube.png',name: 'apple tv',),
                                      ),
                                      Text("Youtube",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: AppImageWidget(url: 'assets/images/whatsapp1.png',name: 'podcast'),
                                          ),
                                          Positioned(
                                            right:0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              radius: 15,
                                              child: Text("5",style: GoogleFonts.roboto(color:Colors.white,fontSize: screenWidth*0.04),),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("Whatsapp",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  ),Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: AppImageWidget(url: 'assets/images/instagram.png',name: 'reglage'),
                                          ),
                                          Positioned(
                                            right:0,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              radius: 15,
                                              child: Text("10",style: GoogleFonts.roboto(color:Colors.white,fontSize: screenWidth*0.04),),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("Instagram",style: GoogleFonts.roboto(color: Colors.white))
                                    ],
                                  )

                                ],
                              )
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){Get.to(SearchPage());},
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                                child: Container(
                                  height:screenWidth*0.45,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/album.jpg'),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                        color: Colors.black.withOpacity(0.3),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ClipRRect(
                                              child:Image.asset('assets/images/album.jpg',width: screenWidth*0.4,height:screenWidth*0.4 ,)
                                            ),
                                            Container(
                                              width:screenWidth*0.4,
                                              height:screenWidth*0.4,
                                              child: Padding(
                                                padding: const EdgeInsets.all(10),
                                                child: Column(
                                                  children:[
                                                    SizedBox(height:screenWidth*0.05),
                                                    Text("Show Out",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.045)),
                                                    Text("kid Cudi ,Skepta ,Pop Smoke",style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.6),fontSize: screenWidth*0.035),overflow:TextOverflow.ellipsis, ),
                                                    SizedBox(height:20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children:[
                                                        Icon(CupertinoIcons.backward_fill,color:Colors.white),
                                                        Icon(CupertinoIcons.pause_fill,color:Colors.white),
                                                        Icon(CupertinoIcons.forward_fill,color:Colors.white),
                                                      ]
                                                    )
                                                  ]
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: screenWidth*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xff3bde58),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Icon(CupertinoIcons.phone_fill,color: Colors.white,size: screenWidth*0.15,),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Icon(CupertinoIcons.compass_fill,color: Colors.blue,size: screenWidth*0.15),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff3bde58),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Icon(CupertinoIcons.chat_bubble_fill,color: Colors.white,size: screenWidth*0.15),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xfffa3d51),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Icon(CupertinoIcons.music_note_2,color: Colors.white,size: screenWidth*0.15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
          )
        ],
        ),
      ),
    );
  }
}
