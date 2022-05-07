import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function page;
  const  CustomButton({this.text, this.color, this.page});
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return GestureDetector(
      onTap: page,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
