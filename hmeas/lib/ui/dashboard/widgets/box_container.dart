import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final BoxShadow? boxShadow;

  const BoxContainer({
    super.key,
    required this.child,
    this.height = 100,
    this.width = 100,
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.color = Colors.white,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow:
            boxShadow != null
                ? [
                  BoxShadow(
                    color: boxShadow!.color,
                    blurRadius: boxShadow!.blurRadius,
                    offset: boxShadow!.offset,
                  ),
                ]
                : null,
      ),
      child: child,
    );
  }
}
