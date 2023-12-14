import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AppWidget extends StatelessWidget {
  const AppWidget({super.key, required this.icon, required this.color});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Icon(icon,color: Colors.white,size: screenWidth*0.15,),
    );
  }
}
