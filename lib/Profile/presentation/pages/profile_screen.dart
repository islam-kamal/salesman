import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Profile/presentation/widgets/profile_screen_body.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/Profile/presentation/pages/change_password_screen.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return AppScreen(
       child: ProfileScreenBody(),
       screenButtons: [
         AppButtonWidget(
           asset: 'assets/images/passwordTextField.png',
           text: 'كلمة السر',
           onClick: () {
             customAnimatedPushNavigation(context, ChangePasswordScreen());
           },
         ),
         AppButtonWidget(
           asset: 'assets/images/LogOut.png',
           text: 'تسجيل خروج',
           onClick: () => Dialogs.showDialogProfileLogout(context),
           color: kWhiteColor,
         ),
       ],
     );
  }
}