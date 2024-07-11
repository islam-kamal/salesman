import 'package:flutter/material.dart';
import 'package:water/widgets/popup_menu_of_payment.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      'الكمية المحصلة',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.038
                        : MediaQuery.of(context).size.height * 0.061,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 189, 184, 184),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        cursorColor: Color.fromARGB(255, 66, 64, 64),
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            'assets/images/VectorStroke.png',
                            width: 22,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: 'المبلغ بالريال',
                          hintStyle: const TextStyle(
                            color: Color(0xff758195),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      'طريقى الدفع',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.038
                        : MediaQuery.of(context).size.height * 0.061,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 189, 184, 184),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/Card.png',
                            width: 22,
                            color: Colors.black,
                          ),
                          const Text(
                            'كاش او فيزا',
                            style: TextStyle(
                              color: Color(0xff758195),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const PopupMenuOfPayment(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      '',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.038
                        : MediaQuery.of(context).size.height * 0.061,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 246, 246),
                          border: Border.all(
                            color: const Color.fromARGB(255, 189, 184, 184),
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/images/AdddddCircle.png'),
                              ),
                              Text(
                                'اضافة دفعة',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
