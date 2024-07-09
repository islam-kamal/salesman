import 'package:water/index.dart';

import './navigate_basic_container_widget.dart';
import 'package:flutter/material.dart';

class ErrorInNetworkScreenDetails extends StatelessWidget {
  const ErrorInNetworkScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.55,
                      child: Container(
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
                                onTap: () {},
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    const Opacity(
                        opacity: 0.55, child: NavigateBasicContainer()),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ErrorInterface(errorImage:  'assets/images/errorInNetwork.png',
                     errorTitle: 'خطأ في الشبكة',
                      errorSubTitle: 'لا يمكن الاتصال بالشبكة. يرجى التحقق من الاتصال بالإنترنت',
                      imageSize: 0.55,),
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
