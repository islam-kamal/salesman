import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';


class FinishButtonContainer extends StatelessWidget{
  const FinishButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaQuery.of(context).orientation == Orientation.portrait ?
        Container(
          width: Shared.width * 0.23,
          height: Shared.height * 0.062,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
              width: Shared.width * 0.1,
              height: Shared.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)
              ),
                child: TextButton(
                clipBehavior: Clip.hardEdge,
                onPressed: (){
                  _showAlertDialog(context);
                },
                  child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Icon-Wrapper(2).png',
                      color: Colors.white,
                      ),
                    SizedBox(
                          width: Shared.width * 0.008,
                        ),
                    const Text(
                      'انهاء الزيارة',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                      ),
                      ),
                  ],
                  ),
                  ),
              ),
            ),
        )
        : Container(
          width: Shared.width * 0.24,
          height: Shared.height * 0.09,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
              width: Shared.width * 0.1,
              height: Shared.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)
              ),
                child: TextButton(
                clipBehavior: Clip.hardEdge,
                onPressed: (){
                  _showAlertDialog(context);
                },
                  child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Icon-Wrapper(2).png',
                      color: Colors.white,
                      ),
                    SizedBox(
                          width: Shared.width * 0.008,
                        ),
                    const Text(
                      'انهاء الزيارة',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                      ),
                      ),
                  ],
                  ),
                  ),
              ),
            ),
        )
      ],
    );
  }
}


void _showAlertDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: Shared.width * 0.6,
            height: Shared.height * 0.188,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/InfoCircle.png',
                  width: Shared.width * 0.12,
                  ),
                SizedBox(
                  height: Shared.height * 0.008,
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                     'هل انت متأكد من انهاء الزيارة؟',
                      style: TextStyle(
                        color: Color(0xff0056C9),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16 , top: 10),
                    child: Text(
                      'يمكنك بدء الزيارة مجدداً لاصدار فواتير جديدة',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: Shared.width * 0.27,
                            height: Shared.height * 0.038,
                            decoration: BoxDecoration(
                            color: const Color(0xff1D7AFC),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Opacity(
                                  opacity: 0.8,
                                  child: Text(
                                    'انهاء الزيارة',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Shared.width * 0.006,
                                ),
                                Image.asset('assets/images/PrinterMinimalistic.png'),
                              ],
                            ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: Shared.width * 0.27,
                            height: Shared.height * 0.038,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Color.fromARGB(255, 198, 195, 195),
                            width: 0.8,
                            ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'الرجوع للزيارة',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(
                                  width: Shared.width * 0.006,
                                ),
                                Image.asset('assets/images/arrowww.png'),
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
      },
    );
  }