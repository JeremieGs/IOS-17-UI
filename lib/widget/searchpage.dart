import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appimage.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        child: Stack(
          children:[
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
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: screenWidth*0.13,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.search,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text("Bibliothèque d'apps",style: GoogleFonts.roboto(color: Colors.white,fontSize: screenWidth*0.05),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView(
                      shrinkWrap: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: screenWidth*0.4,
                            width: screenWidth*0.4,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child:GridView(
                              shrinkWrap: false,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/time.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/uber.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/calender.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/livre.jpg',name: 'horloge',),
                                ),
                              ],
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: screenWidth*0.4,
                            width: screenWidth*0.4,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child:GridView(
                              shrinkWrap: false,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/tv.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/raccourcis.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/home.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/contact.png',name: 'horloge',),
                                ),
                              ],
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: screenWidth*0.4,
                            width: screenWidth*0.4,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child:GridView(
                              shrinkWrap: false,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/podcast.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/instagram.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/whatsapp1.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/chrome.png',name: 'horloge',),
                                ),
                              ],
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: screenWidth*0.4,
                            width: screenWidth*0.4,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child:GridView(
                              shrinkWrap: false,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/note.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/camera.png',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/bourse.jpg',name: 'horloge',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AppImageWidget(url: 'assets/images/tiktok.png',name: 'horloge',),
                                ),
                              ],
                            ) ,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          ]
        ),
      ),
    );
  }
}
