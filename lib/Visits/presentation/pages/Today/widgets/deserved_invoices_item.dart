import 'package:flutter/material.dart';

class DeservedInvoicesItem extends StatelessWidget {
  const DeservedInvoicesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.014),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11),
        width: double.infinity,
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.048
            : MediaQuery.of(context).size.height * 0.076,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)),
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Text(
                'فاتورة 123414',
                style: TextStyle(
                    color: Color(0xff25292E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Expanded(
              flex: 1,
              child: CircularProgressIndicator.adaptive()
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/period.png',
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                  const Text(
                '28 يوم',
                style: TextStyle(
                    color: Color(0xffAC6521),
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/VectorError.png',
                    height: MediaQuery.of(context).size.height * 0.013,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                  const Text(
                '30,000 ر.س',
                style: TextStyle(
                    color: Color(0xffAC6521),
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
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
