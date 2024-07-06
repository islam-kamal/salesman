import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_in_drawer.dart';
import 'package:water/basics/shared.dart';


class DrawerEditInventoryScreen extends StatelessWidget{
  const DrawerEditInventoryScreen({super.key});

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
                        'تعديل المنتج',
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
                            child: const Center(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                          width: Shared.width * 0.018,
                        ),
                          InkWell(
                            onTap: (){},
                            child: const ImageIcon(
                              color: Colors.blue,
                              AssetImage('assets/images/AddCircle.png')
                            ),
                          ),
                          SizedBox(
                          width: Shared.width * 0.052,
                        ),
                        InkWell(
                          onTap: (){},
                          child: const ImageIcon(
                            color: Colors.red,
                            AssetImage(
                              'assets/images/deleteee.png'
                              ),
                          ),
                        ),
                        SizedBox(
                          width: Shared.width * 0.007,
                        ),
                        const Text(
                          'ازالة من الفاتورة',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
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
                                    width: Shared.width * 0.006,
                                  ),
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        'حفظ التعديلات',
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