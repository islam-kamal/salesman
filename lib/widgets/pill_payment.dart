import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';

class PillPayment extends StatelessWidget {
  const PillPayment({super.key, required this.textButton, this.dialogName = 'pill'});

  final String textButton;
  final String dialogName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      children: [
                        Image.asset('assets/images/Banknote2.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.007,
                        ),
                        const Text(
                          'متبقى 25,000 ر.س',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {if(dialogName == 'pill'){
                    Dialogs.showDialogReviewProducts(context);
                  }else if(dialogName == 'edit'){
                    Dialogs.showDialogSaveEdits(context);
                  }else if(dialogName == 'send'){
                    Dialogs.showDialogSendRequest(context);
                  }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.038
                        : MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                        color: const Color(0xff1D7AFC),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/CheckCircle.png',
                            color: Colors.white),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.006,
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            textButton,
                            style: const TextStyle(
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
        ),
      ],
    );
  }
}
