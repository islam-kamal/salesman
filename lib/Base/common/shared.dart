import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';

class Shared {
  static showLoadingDialog({required BuildContext context}) {
    showDialog(
        context: context,
        useSafeArea: true,
        barrierDismissible: false,
        builder: (ctx) => SpinKitWave(
              color: Colors.white,
              size: 38.0,
            ));
  }

  static dismissDialog({required BuildContext context}) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  // use thos widget to show loading while waiting data from backend
  static final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );

  // use this function to show message to user
/*  static void showSnackBarView(
      {String? message,
      String? backend_message,
      bool? error_status,
      bool? sigin_button}) {
    var snackBar = SnackBar(
      content: Text(
        backend_message ?? LocalizeAndTranslate.translate(message!),
        style: TextStyle(
          color: error_status! ? kWhiteColor : kGreenColor,
        ),
        textDirection: LocalizeAndTranslate.getLanguageCode() == 'en'
            ? TextDirection.ltr
            : TextDirection.rtl,
      ),
      backgroundColor: error_status ? kRedColor : kWhiteColor,
      action: sigin_button!
          ? SnackBarAction(
              label: LocalizeAndTranslate.translate("ksignin"),
              textColor: kBlackColor,
              onPressed: () {},
            )
          : null,
    );
    // Step 3
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackBar);
  }*/

  static Widget text_widget({String? text, TextStyle? textStyle}) {
    return Row(
      children: [
        Text(
          "$text",
          style: textStyle,
        )
      ],
    );
  }

  static double width = ScreenUtil.defaultSize.width;
  static double height = ScreenUtil.defaultSize.height;
  static String userType = "B2C";
  static List<File> images_list = [];
  static List<Asset> assets_list = [];
  static String inventoryCurrentRequeststype = 'editProduct';

  static  String device_token = '';

}
