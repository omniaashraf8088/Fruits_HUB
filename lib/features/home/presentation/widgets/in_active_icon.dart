import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: SvgPicture.asset(image)) ;
  }
}






