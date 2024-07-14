import 'dart:io';

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/theme.dart';


class PageContainer extends StatelessWidget {
  final Widget? child;
  const PageContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Platform.isIOS ? kWhiteColor : kGreenColor,
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: child,
          ),
        ));
  }
}
