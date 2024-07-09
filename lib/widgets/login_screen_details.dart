import 'package:flutter/material.dart';
import 'package:water/index.dart';
import 'package:water/widgets/login_email_text_field.dart';

class LoginScreenDetails extends StatelessWidget {
  const LoginScreenDetails({super.key});

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
                    const LoginEmailTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    const LoginPasswordTextField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    InkWell(
                      onTap: () {},
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
}
