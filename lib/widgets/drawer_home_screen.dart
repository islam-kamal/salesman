import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_in_drawer.dart';

class DrawerHomeScreen extends StatelessWidget {
  const DrawerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
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
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const WaterItemInDrawer(),
              Row(
                children: [
                  const Text(
                    'العدد',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset(
                      'assets/images/marketImage.png',
                      height: MediaQuery.of(context).size.height * 0.011,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'متاح30 قطعة',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
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
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.036
                          : MediaQuery.of(context).size.height * 0.064,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text('1'),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.013,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                          color: Colors.blue,
                          AssetImage('assets/images/AddCircle.png')),
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
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                              children: [
                                Image.asset(
                                  'assets/images/Banknote2.png'
                                ),
                                SizedBox(
                        width: MediaQuery.of(context).size.width * 0.005,
                      ),
                                const Text(
                                  'اجمالي 3,000 ر.س',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                 Image.asset(
                                  'assets/images/asssa.png',
                                  height: MediaQuery.of(context).size.height * 0.012,
                                  color: const Color(0xff111111),
                                ),
                                 SizedBox(
                        width: MediaQuery.of(context).size.width * 0.005,
                      ),
                                const Text(
                                  'متبقى 25,000 ر.س',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.039
                          : MediaQuery.of(context).size.height * 0.066,
                      decoration: BoxDecoration(
                          color: const Color(0xff1D7AFC),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/CheckCircle.png',
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.006,
                          ),
                          const Text('اضافة للطلب',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300)),
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
