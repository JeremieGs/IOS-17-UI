import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class ParametreScreen extends StatelessWidget {
  const ParametreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return CupertinoPageScaffold(
      backgroundColor: Color(0xfff0eff6),
        child: Column(
          children: [
            SizedBox(height: screenWidth*0.2,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                        child: Image.asset('assets/images/wallpaper.jpg',width: screenWidth*0.15,height: screenWidth*0.15,fit: BoxFit.fill,)
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("AGBODJI Jerenmie",style: GoogleFonts.roboto(fontSize: screenWidth*0.05,color: Colors.black,decoration: TextDecoration.none),),
                        Text("id,Apple,iCloud,médias et achats",style: GoogleFonts.roboto(fontSize: screenWidth*0.035,color: Colors.grey[700],decoration: TextDecoration.none),),
                      ],
                    ),
                    Icon(CupertinoIcons.right_chevron)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xfffd9310),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.airplane,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Mode Avion",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        CupertinoSwitch(
                          // This bool value toggles the switch.
                          value: true,
                          activeColor: CupertinoColors.activeGreen,
                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff0771f3),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.wifi,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Wi-Fi",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("TP-LINK-095725",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff89898b),decoration: TextDecoration.none),
                            ),
                            Icon(CupertinoIcons.right_chevron,color: Color(
                                0xff8e8e90),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff0771f3),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.bluetooth,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Bluetooth",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Oui",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff89898b),decoration: TextDecoration.none),
                            ),
                            Icon(CupertinoIcons.right_chevron,color: Color(
                                0xff8e8e90),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff2fcb4d),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(FontAwesomeIcons.towerCell,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Données Cellulaires",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff33bc65),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.link,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Partage de connexion",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xfffd2e34),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.airplane,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Notifications",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xfffd2e61),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.speaker_3_fill,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Son et vibrations",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff564fcf),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.moon_fill,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Concentration",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: screenWidth*0.1,),
                        Expanded(
                          child: Container(
                            child: Divider(
                              color: Color(0xffdadadc),
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xff5246c2),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Icon(CupertinoIcons.hourglass,color: Colors.white,),
                            ),
                            SizedBox( width: 10,),
                            Text("Temps d'écran",style: GoogleFonts.roboto(fontSize: screenWidth*0.045,color: Color(
                                0xff1d1a1d),decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        Icon(CupertinoIcons.right_chevron,color: Color(
                            0xff8e8e90),),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
    ),
      navigationBar: CupertinoNavigationBar(
      middle: Text("Réglages",style: GoogleFonts.roboto(fontSize:screenWidth*0.05 ),),
      ),
    );
  }
}
