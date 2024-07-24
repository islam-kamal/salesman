import 'package:flutter/material.dart';
import 'package:water/Base/common/theme.dart';

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
             Expanded(
              flex: 1,
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            /*      Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        value: 20,
                        backgroundColor: kGreenColor,
                        color: kGreenColor,
                      ) ),*/
                Container(
                width: 20,
                height: 20,
                child:  ShaderMask(
                    shaderCallback: (rect) {
                      return RadialGradient(
                        colors: [Colors.green, Colors.greenAccent],
                        radius: 0.5,
                        tileMode: TileMode.mirror,
                      ).createShader(rect);
                    },
                    child: CircularProgressIndicator(
                      strokeWidth:3.0,
                      value: 20,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent), // No need for color here
                      backgroundColor: Colors.grey,
                    ),
                ) ),
               Padding(padding: EdgeInsets.symmetric(horizontal: 10),
               child:    const Text(
                 ' % 30',
                 style: TextStyle(
                     color: Color(0xffAC6521),
                     fontSize: 18,
                     fontWeight: FontWeight.w300),
               ),),
                ],
              )
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
