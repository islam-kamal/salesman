import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class SearchTextFieldSoldProductsScreen extends StatelessWidget{
  const SearchTextFieldSoldProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Text(
            'المنتجات المباعة',
            style: TextStyle(
              fontSize: 23,
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: Shared.height * 0.019,
          ),
          Container(
            width: Shared.width * 0.5,
            height: Shared.height * 0.033,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.5),
              child: TextField(
                cursorColor: Color.fromARGB(255, 66, 64, 64),
                decoration: InputDecoration(
                       contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  prefixIcon: Image.asset(
                    'assets/images/search.png',
                    color: Colors.black,
                    ),
                    
                  hintText: 'البحث عن منتج',
                  hintStyle: const TextStyle(
                    color: Color(0xff758195),
                  )
                ),
              ),
            )
          ),
      ],
    );
  }
}