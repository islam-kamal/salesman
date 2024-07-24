/*
import 'package:flutter/material.dart';
import 'package:water/Authentication/presentation/widgets/login_password_text_field.dart';
import 'package:water/Authentication/presentation/widgets/login_email_text_field.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';

class LoginScreenDetails extends StatefulWidget {
   LoginScreenDetails({super.key});

  @override
  State<LoginScreenDetails> createState() => _LoginScreenDetailsState();
}

class _LoginScreenDetailsState extends State<LoginScreenDetails> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 33, right: 11, left: 11, bottom: 14),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        color: Color(0xff25292E),
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.026,
                    ),
                    Image.asset(
                      'assets/images/GroupLogo.png',
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.035
                          : MediaQuery.of(context).size.height * 0.062,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                 //    LoginEmailTextField(),
                    usernameTextField(context),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    const LoginPasswordTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    InkWell(
                      onTap: () {
                        if(controller.text == "b2c@gmail.com"){
                          customAnimatedPushNavigation(context, DashboardScreen(
                            UserType: "B2C" ,
                          ));

                        }else{
                          customAnimatedPushNavigation(context, DashboardScreen(
                            UserType: "B2B",
                          ));

                        }

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.04
                            : MediaQuery.of(context).size.height * 0.068,
                        decoration: BoxDecoration(
                            color: const Color(0xff1D7AFC),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/CheckCircle.png',
                                color: Color(0xffF9F9F9)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.006,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.024,
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/loginImage.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameTextField(BuildContext context){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'البريد الاكتروني',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.01,
            right: MediaQuery.of(context).size.width * 0.01,
          ),
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.044
              : MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 215, 212, 212),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/emailTextField.png',
                  height:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.021
                      : MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Expanded(
                flex: 20,
                child:TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.014,
                    ),
                    border: InputBorder.none,
                    hintText: 'ادخل البريد العمل الاكتروني',
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'البريد الإلكتروني مطلوب';
                    }
                    // Basic email regex for validation
                    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return 'الرجاء إدخال بريد إلكتروني صالح';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:water/Authentication/presentation/widgets/login_password_text_field.dart';
import 'package:water/Authentication/presentation/widgets/login_email_text_field.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';

class LoginScreenDetails extends StatefulWidget {
  LoginScreenDetails({super.key});

  @override
  State<LoginScreenDetails> createState() => _LoginScreenDetailsState();
}

class _LoginScreenDetailsState extends State<LoginScreenDetails> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 33, right: 11, left: 11, bottom: 14),
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'تسجيل دخول',
                        style: TextStyle(
                          color: Color(0xff25292E),
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.026,
                      ),
                      Image.asset(
                        'assets/images/GroupLogo.png',
                        height: MediaQuery.of(context).orientation == Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.035
                            : MediaQuery.of(context).size.height * 0.062,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      usernameTextField(context),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.017,
                      ),
                      passwordTextField(context),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            if (emailController.text == "b2c@gmail.com") {
                              Shared.userType = "B2C";

                            } else {
                              Shared.userType = "B2B";
                            }
                            customAnimatedPushNavigation(
                              context,
                              DashboardScreen(),
                            );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: MediaQuery.of(context).orientation == Orientation.portrait
                              ? MediaQuery.of(context).size.height * 0.04
                              : MediaQuery.of(context).size.height * 0.068,
                          decoration: BoxDecoration(
                              color: const Color(0xff1D7AFC),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/CheckCircle.png',
                                  color: Color(0xffF9F9F9)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.006,
                              ),
                              const Opacity(
                                opacity: 0.8,
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.024,
                ),
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0), // Set the radius as needed
                    child: Image.asset(
                      'assets/images/loginImage.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget usernameTextField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'البريد الاكتروني',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.01,
            right: MediaQuery.of(context).size.width * 0.01,
          ),
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.044
              : MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 215, 212, 212),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/emailTextField.png',
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.021
                      : MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Expanded(
                flex: 20,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.014,
                    ),
                    border: InputBorder.none,
                    hintText: 'ادخل البريد العمل الاكتروني',
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'البريد الإلكتروني مطلوب';
                    }
                    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return 'الرجاء إدخال بريد إلكتروني صالح';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget passwordTextField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'كلمة المرور',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.01,
            right: MediaQuery.of(context).size.width * 0.01,
          ),
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.044
              : MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 215, 212, 212),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/passwordTextField.png',
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.021
                      : MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Expanded(
                flex: 20,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.014,
                    ),
                    border: InputBorder.none,
                    hintText: 'ادخل كلمة المرور',
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'كلمة المرور مطلوبة';
                    }
                    if (value.length < 6) {
                      return 'يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
