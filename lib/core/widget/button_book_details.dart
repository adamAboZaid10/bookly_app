import 'package:flutter/material.dart';

class ButtonDetails extends StatelessWidget {
  const ButtonDetails(
      {Key? key,
      required this.style,
      required this.function,
      required this.text,
      required this.textStyle})
      : super(key: key);
  final ButtonStyle style;
  final GestureTapCallback function;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      style: style,
      onPressed: function,
      child: Text(
        text,
        style: textStyle,
      ),
    ));
  }
}
