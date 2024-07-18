import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/store_deal_container_widget.dart';
import 'package:water/widgets/take_photo_widget.dart';

class AttachPhotosScreenBody extends StatelessWidget {
  AttachPhotosScreenBody({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 11),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        _key.currentState!.openDrawer(),
                                    child: const ImageIcon(AssetImage(
                                        'assets/images/Icon-Wrappppper.png')),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  const Opacity(
                                    opacity: 0.8,
                                    child: Text('اخفاء القائمة'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          const StoreDealContainer(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.24,
                            height: MediaQuery.of(context).orientation == Orientation.portrait ?
                             MediaQuery.of(context).size.height * 0.056
                            : MediaQuery.of(context).size.height * 0.092,
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
                                        Dialogs.showDialogFinishVisit(context),
                                    child: const Button(
                                      color: Colors.black,
                                      iconImage:
                                          'assets/images/ChCircle.png',
                                      buttonName: 'انهاء الزيارة',
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ])),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ارفاق صور',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 18, bottom: 11),
                        child: Text(
                          'يمكنك ارفاق صور للمتجر في حالة طلب مديرك',
                          style: TextStyle(
                              color: Color(0xff25292E),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const TakePhoto(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/makeImage.png'),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.005,
                                ),
                                const Text(
                                  'لم يتم رفع صور بعد',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: InkWell(
                                onTap: () =>
                                    Dialogs.showDialogSendPhotos(
                                        context),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? MediaQuery.of(context).size.height *
                                          0.04
                                      : MediaQuery.of(context).size.height *
                                          0.068,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff1D7AFC),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/sendIcon.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          color: const Color(0xffF9F9F9)),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.006,
                                      ),
                                      const Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          'ارسال الصور للادارة',
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
