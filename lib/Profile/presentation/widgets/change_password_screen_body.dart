import 'package:flutter/material.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/index.dart';
import 'package:water/widgets/change_password_text_field.dart';

class ChangePasswordScreenBody extends StatelessWidget {
  ChangePasswordScreenBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          }, icon: const Icon(Icons.arrow_back)),
                      const Text(
                        'تغيير كلمة السر',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const ChangePasswordTextField(
                      nameTextField: 'كلمة السر الحالية',
                      hintTextField: 'ادخل كلمة السر الحالية',
                    ),
                    const ChangePasswordTextField(
                      nameTextField: 'كلمة السر الجديدة',
                      hintTextField: 'ادخل كلمة السر الجديدة',
                    ),
                    const ChangePasswordTextField(
                      nameTextField: 'تأكيد كلمة السر',
                      hintTextField: 'ادخل كلمة السر الجديدة مرة اخرى',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                       onTap: () => Dialogs.showDialogChangePassword(context),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                            height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.038
                            : MediaQuery.of(context).size.height * 0.065,
                            decoration: BoxDecoration(
                            color: Color(0xff1D7AFC),
                            borderRadius: BorderRadius.circular(6)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/CheckCircle.png',
                                        color: Colors.white
                                        ),
                                        SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.006,
                                      ),
                                      const Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          'حفظ التعديلات',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                        ),
                  ),
                      ],
                    ),
                  ],
                ),
              ),
    );
  }
}
