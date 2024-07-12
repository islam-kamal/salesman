import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/change_password_text_field.dart';
import 'package:water/widgets/navigate_basic_container_widget.dart';

class ChangePasswordScreenBody extends StatelessWidget {
  ChangePasswordScreenBody({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const Drawer(),
        key: _key,
        body: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, top: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.041
                          : MediaQuery.of(context).size.height * 0.052,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => _key.currentState!.openDrawer(),
                              child: const ImageIcon(AssetImage(
                                  'assets/images/Icon-Wrappppper.png')),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    NavigateBasicContainer(),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_back)),
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
            ],
          ),
        ),
      ),
    );
  }
}
