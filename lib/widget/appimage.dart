import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class AppImageWidget extends StatelessWidget {
  const AppImageWidget({super.key, required this.url, required this.name});
  final String url;
  final String name;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image.asset(url,fit: BoxFit.fill,width: screenWidth*0.17,height: screenWidth*0.17,)
      )
    );
  }
}
