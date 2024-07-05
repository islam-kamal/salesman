import 'package:flutter/material.dart';

class WaterItemAvailableItems extends StatelessWidget{
  const WaterItemAvailableItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.115,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/waterImagee.png'
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'مياه',
                        style: TextStyle(
                          color: Color(0xff25292E),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                            decoration: BoxDecoration(
                            color: Color.fromARGB(255, 247, 245, 245),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/marketImage.png',
                                    width: MediaQuery.of(context).size.width * 0.024,
                                    ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.002,
                                  ),
                                  const Text(
                                    '50 منتج',
                                    style: TextStyle(
                                      color: Color(0xff0056C9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ),
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
    );
  }
}