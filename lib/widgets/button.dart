import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.color,
      required this.iconImage,
      required this.buttonName,
      required this.textColor});

  final Color color;
  final Color textColor;
  final String iconImage;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.223,
      height: MediaQuery.of(context).size.height * 0.046,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Color(0xff758195),
            width: 0.9,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
        clipBehavior: Clip.hardEdge,
        onPressed: () {},
        child: Row(
          children: [
            ImageIcon(
              color: textColor,
              size: MediaQuery.of(context).size.height * 0.018,
              AssetImage(
                iconImage,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.006,
            ),
            Text(
              buttonName,
              style:TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}