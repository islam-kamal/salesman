import 'package:flutter/material.dart';

class FirstContainerInFinancialCollection extends StatelessWidget{
  const FirstContainerInFinancialCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'تحصيل مالي',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.046
             : MediaQuery.of(context).size.height * 0.076,
            decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffDD7208),
            width: 1,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child: const Center(
          child: Text(
            'مستحق  25,000 ر.س',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
                            ),
          ),
        ),
      ],
    );
  }
}