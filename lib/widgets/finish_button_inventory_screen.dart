import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class FinishButtonInventoryScreen extends StatelessWidget{
  const FinishButtonInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: MediaQuery.of(context).size.height * 0.062,
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
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)
              ),
                child: TextButton(
                clipBehavior: Clip.hardEdge,
                onPressed: (){},
                  child: Row(
                  children: [
                    const ImageIcon(
                       color: Colors.white,
                      AssetImage(
                        'assets/images/VectorAdddd.png',
                      ),
                    ),
                    SizedBox(
                          width: MediaQuery.of(context).size.width * 0.006,
                        ),
                    const Text(
                      'طلب تحويل',
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
        ),
      ],
    );
  }
}