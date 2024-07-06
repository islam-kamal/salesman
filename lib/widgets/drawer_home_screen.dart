import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_in_drawer.dart';
import 'package:water/basics/shared.dart';


class DrawerHomeScreen extends StatelessWidget{
  const DrawerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: Shared.width * 0.5,
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
                        width: Shared.width * 0.012,
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
                        height: Shared.height * 0.018,
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
                          width: Shared.width * 0.013,
                        ),
                          Container(
                            width: Shared.width * 0.13,
                            height: Shared.height * 0.036,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                          width: Shared.width * 0.013,
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
                        height: Shared.height * 0.01,
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
                            onTap: (){},
                            child: Container(
                              width: Shared.width * 0.28,
                              height: Shared.height * 0.039,
                              decoration: BoxDecoration(
                              color: const Color(0xff1D7AFC),
                                borderRadius: BorderRadius.circular(5)
                              ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/CheckCircle.png',
                                      color: Colors.white,
                                      ),
                                    SizedBox(
                                    width: Shared.width * 0.006,
                                  ),
                                    const Text(
                                      'اضافة للفاتورة',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300
                                      )
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