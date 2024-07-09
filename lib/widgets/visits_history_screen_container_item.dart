import 'package:flutter/material.dart';

class VisitsHistoryScreenContainerItem extends StatelessWidget {
  const VisitsHistoryScreenContainerItem(
      {super.key,
      required this.date,
      required this.store,
      required this.collect,
      required this.returned,
      required this.visit,
      required this.complete,
      required this.icon,
      required this.iconColor});

  final String date;
  final String store;
  final String collect;
  final String returned;
  final String visit;
  final String complete;
  final String icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.08
                : MediaQuery.of(context).size.height * 0.128,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/datee.png',
                            height: MediaQuery.of(context).size.height * 0.013,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.008,
                          ),
                          Text(
                            date,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 247, 245, 245),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Image.asset(
                                icon,
                                height:
                                    MediaQuery.of(context).size.height * 0.014,
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.008,
                              ),
                              Text(
                                visit,
                                style: TextStyle(
                                    color: iconColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/smallShop.png',
                          height: MediaQuery.of(context).size.height * 0.013,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.008,
                        ),
                        Text(
                          store,
                          style: const TextStyle(
                              color: Color(0xff5F480C),
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/trueInSquare.png',
                              color: const Color(0xff0056C9),
                              height:
                                  MediaQuery.of(context).size.height * 0.013,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            Text(
                              complete,
                              style: const TextStyle(
                                  color: Color(0xff0056C9),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Container(color: Color(0xffDCDFE3), height: 20, width: 2,),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/RestartCircle.png',
                              color: const Color(0xffAC6521),
                              height:
                                  MediaQuery.of(context).size.height * 0.013,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            Text(
                              returned,
                              style: const TextStyle(
                                  color: Color(0xffAC6521),
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Container(color: Color(0xffDCDFE3), height: 20, width: 2,),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/MoneyBag.png',
                              color: const Color(0xff1D6E4F),
                              height:
                                  MediaQuery.of(context).size.height * 0.013,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            Text(
                              collect,
                              style: const TextStyle(
                                  color: Color(0xff1D6E4F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
