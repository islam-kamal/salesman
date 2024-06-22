import 'package:flutter/material.dart';
import 'package:water/financial_collection_screen.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1D7AFC)),
        useMaterial3: true,
        fontFamily:'GE Dinar One'
      ),
      home:  FinancialCollectionScreen(),         //SoldProductsScreen(),               //ReviewReturnedProductsScreen(),       //PreviousInvoicesScreen()     //HomeScreen(),
    );
  }
}
