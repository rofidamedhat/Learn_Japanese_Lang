import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key,
    required this.color,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final Color color;
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 65,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
