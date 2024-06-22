import 'package:flutter/material.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';
import 'package:water/home_screen.dart';
import 'package:water/review_product_screen.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily:'GE Dinar One'
      ),
   /*   home:  HomeScreen(
        child: Container(),
        button: HomeButtonWidget(
          asset: 'assets/images/add.png',
          text: 'اضافة',
          onClick: (){

          },
        ),
      ),*/
      home: DashboardScreen(),
    );
  }
}
