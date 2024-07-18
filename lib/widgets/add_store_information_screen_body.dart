import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/add_merchant_text_field.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/navigate_add_merchant_container.dart';
import 'package:water/widgets/take_photo_widget.dart';

class AddStoreInformationScreenBody extends StatelessWidget {
  AddStoreInformationScreenBody({super.key});

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
                          : MediaQuery.of(context).size.height * 0.063,
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
                    const NavigateAddMerchantContainer(
                      merchantSecondImage: 'assets/images/IconMerchant.png',
                      storeSecondImage: 'assets/images/IconIndicator.png',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.114
                          : MediaQuery.of(context).size.height * 0.182,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () =>
                                  Dialogs.showDialogSaveClient(context),
                              child: const Button(
                                color: Colors.black,
                                iconImage: 'assets/images/CheckCircle.png',
                                buttonName: 'حفظ العميل',
                                textColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.011,
                            ),
                            InkWell(
                              onTap: () =>
                                  Dialogs.showDialogCancelClient(context),
                              child: const Button(
                                color: Colors.white,
                                iconImage: 'assets/images/cancell.png',
                                buttonName: 'الغاء العميل',
                                textColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'اضافة معلومات التاجر',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.43
                          : MediaQuery.of(context).size.height * 0.705,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AddMerchantTextField(
                                hintTextField: 'ادخل الاسم ثلاثي',
                                nameTextField: 'اسم المتجر',
                                input: TextInputType.name),
                            const AddMerchantTextField(
                                hintTextField: 'ادخل الرقم السعودي',
                                nameTextField: 'الرقم الضريبي',
                                input: TextInputType.phone),
                            const AddMerchantTextField(
                                hintTextField: 'ادخل البريد الكتروني',
                                nameTextField: 'رقم السجل',
                                input: TextInputType.emailAddress),
                                const AddMerchantTextField(
                                hintTextField: 'ادخل البريد الكتروني',
                                nameTextField: 'الموقع الرسمي(ان وجد)',
                                input: TextInputType.emailAddress),
                                const Text(
                                  'اضف المستندات',
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.005,
                                    ),
                                TakePhoto(),
                                SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.005,
                                    ),
                                const Text(
                                 'تأكد من اضافة المستندات الآتية:',
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  children: [
                                     const Text(
                                      '.',
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.005,
                                    ),
                                    const Text(
                                      'السجل الضريبي',
                                      style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                     const Text(
                                      '.',
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.005,
                                    ),
                                    const Text(
                                      'توثيق الشركة',
                                      style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                          ],
                        ),
                      ),
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
