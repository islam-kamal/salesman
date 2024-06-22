import 'package:flutter/material.dart';
import 'package:water/widgets/popup_menu_of_payment.dart';

class PaymentMethodFinancialCollection extends StatelessWidget {
  const PaymentMethodFinancialCollection({super.key});

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
                    width: MediaQuery.of(context).size.width * 0.327,
                    height: MediaQuery.of(context).size.height * 0.038,
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
                    width: MediaQuery.of(context).size.width * 0.327,
                    height: MediaQuery.of(context).size.height * 0.038,
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
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/Card.png',
                              width: 22,
                              color: Colors.black,
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: Text(
                              'كاش او فيزا',
                              style: TextStyle(
                                color: Color(0xff758195),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: PopupMenuOfPayment(),
                          ),
                        ],
                      ),
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
