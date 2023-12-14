import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key,required this.url});
  final String url;
  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.asset(widget.url,fit: BoxFit.cover,)
    );
  }
}
