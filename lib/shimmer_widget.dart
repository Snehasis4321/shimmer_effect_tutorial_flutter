import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular(
      {Key? key,
      required this.height,
      required this.width,
      this.shapeBorder = const RoundedRectangleBorder()})
      : super(key: key);

  const ShimmerWidget.circular(
      {Key? key,
      required this.width,
      required this.height,
      this.shapeBorder = const CircleBorder()})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 0, 247, 255),
        highlightColor: const Color.fromARGB(255, 0, 80, 209),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(shape: shapeBorder, color: Colors.black),
        ));
  }
}
