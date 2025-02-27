// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CircleView extends StatelessWidget {
  final double? size;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final Border? border;
  final double? opacity;
  final Image? buttonImage;
  final Icon? buttonIcon;
  final String? buttonText;
  final Color? borderColor;
  final double? borderWidth;
  final BorderStyle? borderStyle;

  const CircleView({
    super.key,
    this.size,
    this.color = Colors.transparent,
    this.borderColor = Colors.black87,
    this.borderWidth = 4.0,
    this.borderStyle = BorderStyle.solid,
    this.boxShadow,
    this.border,
    this.opacity,
    this.buttonImage,
    this.buttonIcon,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
        boxShadow: boxShadow,
      ),
      child: Center(
        // ignore: prefer_if_null_operators
        child: buttonIcon != null
            ? buttonIcon
            : (buttonImage != null)
                ? buttonImage
                : (buttonText != null)
                    ? Text(buttonText!)
                    : null,
      ),
    );
  }

  factory CircleView.joystickCircle(double size, Color color, Color borderColor,
          double borderWidth, BorderStyle borderStyle) =>
      CircleView(
        size: size,
        color: color,
        //showBorder
        border: Border.all(
          color: borderColor,
          width: borderWidth,
          style: borderStyle,
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
      );

  factory CircleView.joystickInnerCircle(
          double size, Color color, Color borderColor) =>
      CircleView(
        size: size,
        color: color,
        border: Border.all(
          color: borderColor,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
      );

  factory CircleView.padBackgroundCircle(
          double? size, Color? backgroundColor, borderColor, Color? shadowColor,
          {double? opacity}) =>
      CircleView(
        size: size,
        color: backgroundColor,
        opacity: opacity,
        border: Border.all(
          color: borderColor,
          width: 4.0,
          style: BorderStyle.solid,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor!,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
      );

  factory CircleView.padButtonCircle(
    double size,
    Color? color,
    Image? image,
    Icon? icon,
    String? text,
  ) =>
      CircleView(
        size: size,
        color: color,
        buttonImage: image,
        buttonIcon: icon,
        buttonText: text,
        border: Border.all(
          color: Colors.black26,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
      );
}
