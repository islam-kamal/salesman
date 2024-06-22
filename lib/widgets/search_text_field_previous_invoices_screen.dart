import 'package:flutter/material.dart';

class SearchTextFieldPreviousInvoicesScreen extends StatelessWidget{
  const SearchTextFieldPreviousInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
            icon: const Icon(Icons.arrow_back)
            ),
        const Text(
          'الفواتير السابقة',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500
          ),
        ),
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.014,
          ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.033,
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
                  
                hintText: 'البحث عن فاتورة',
                hintStyle: TextStyle(
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