import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_previous_invoices_drawer.dart';
import 'package:water/basics/shared.dart';

class DrawerPreviousInvoicesScreen extends StatelessWidget{
  const DrawerPreviousInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: Shared.width * 0.5,
      child: Drawer(
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18 , vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const ImageIcon(
                          AssetImage('assets/images/cancell.png'),
                        ),
                      ),
                      SizedBox(
                        width: Shared.width * 0.012,
                      ),
                      const Text(
                        'تحصيل الفاتورة',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                    ],
                  ),
                  SizedBox(
                        height: Shared.height * 0.012,
                      ),
                  const WaterItemPreviousInvoicesDrawer(),
                 
                ],
              ),
              ),
      ),
    );
  }
}