import 'package:flutter/material.dart';
import 'package:water/financial_collection_screen.dart';
import 'package:water/home_screen.dart';
import 'package:water/inventory_screen.dart';
import 'package:water/previous_invoices_screen.dart';
import 'package:water/registered_customers_screen.dart';
import 'package:water/review_returned_products_screen.dart';
import 'package:water/visits_today_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff1D7AFC)),
        useMaterial3: true,
        fontFamily:'GE Dinar One'
      ),
      home: InventoryScreen(), //RegisteredCustomersScreen(),    //VisitsTodayScreen(),    //ReviewReturnedProductsScreen(),         //HomeScreen(),  //FinancialCollectionScreen(),         //SoldProductsScreen(),                     //PreviousInvoicesScreen()     ,
    );
  }
}
