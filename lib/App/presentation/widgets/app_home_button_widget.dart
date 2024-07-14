import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class AppButtonWidget extends StatelessWidget{
  final String asset;
  final String text;
  Function() onClick;
  AppButtonWidget({required this.text , required this.asset, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: LocalizeAndTranslate.getLanguageCode() == 'en'
        ? TextDirection.rtl
        : TextDirection.ltr,
    child:  Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)
            ),
            child: TextButton(
              clipBehavior: Clip.hardEdge,
              onPressed: onClick,
              child: Row(
                children: [
                  Image.asset(
                    asset, //  'assets/images/Icon-Wrapper(2).png'
                    color: Colors.white,
                    scale: 2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.008,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ), );
  }
}