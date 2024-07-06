import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class FinishButtonReviewProductScreen extends StatelessWidget{
  const FinishButtonReviewProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                onPressed: (){},
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
        ),
      ],
    );
  }
}