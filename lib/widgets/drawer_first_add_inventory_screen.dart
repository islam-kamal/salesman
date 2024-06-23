import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_in_drawer.dart';

class DrawerFirstAddInventoryScreen extends StatelessWidget{
  const DrawerFirstAddInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18 , vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const ImageIcon(
                          AssetImage('assets/images/cancell.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.012,
                      ),
                      const Text(
                        'اضافة المنتج',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                    ],
                  ),
                  SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                  const WaterItemInDrawer(),
                  const Text(
                    'العدد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: const ImageIcon(
                              color: Colors.red,
                              AssetImage(
                                'assets/images/minusCircle.png',
                                ),
                            ),
                          ),
                          SizedBox(
                          width: MediaQuery.of(context).size.width * 0.013,
                        ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.036,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: const Center(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                          width: MediaQuery.of(context).size.width * 0.018,
                        ),
                          InkWell(
                            onTap: (){},
                            child: const ImageIcon(
                              color: Colors.blue,
                              AssetImage('assets/images/AddCircle.png')
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'الاجمالي',
                              style: TextStyle(
                                color: Color(0xff07326A),
                                fontSize: 16,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            Text(
                              '42 ر.س',
                              style: TextStyle(
                                 color: Color(0xff07326A),
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                              _showAlertDialog(context);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.039,
                              decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xff1D7AFC),
                                width: 1
                              ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/CheckCircle.png',
                                      color: Color(0xff1D7AFC),
                                      ),
                                    SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.006,
                                  ),
                                    const Opacity(
                                      opacity:0.8,
                                      child: Text(
                                        'اضافة للمخزن',
                                        style: TextStyle(
                                          color: Color(0xff1D7AFC),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300
                                        )
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
      ),
    );
  }
}

void _showAlertDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 0.183,
            child: Column(
              children: [
                Image.asset(
                  color: Color(0xff23A36D),
                  'assets/images/imagee-truee.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: Text(
                      'تم اضافة المنتج الى المخزن',
                      style: TextStyle(
                        color: Color(0xff1D6E4F),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16 , top: 10),
                    child: Text(
                      'تم اضافة عدد 2 مياه',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.height * 0.038,
                          decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                          color: Color.fromARGB(255, 215, 211, 211),
                          width: 1.3,
                          ),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'الرجوع للمخزن',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.006,
                              ),
                              Image.asset('assets/images/arrowww.png'),
                            ],
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