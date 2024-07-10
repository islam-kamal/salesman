import 'package:flutter/material.dart';
import 'package:water/available_items_screen.dart';
import 'package:water/available_products_screen.dart';
import 'package:water/error_in_network_screen.dart';
import 'package:water/financial_collection_screen.dart';
import 'package:water/index.dart';
import 'package:water/inventory_screen.dart';
import 'package:water/login_screen.dart';
import 'package:water/previous_invoices_screen.dart';
import 'package:water/registered_customers_screen.dart';
import 'package:water/review_returned_products_screen.dart';
import 'package:water/trader_details_screen.dart';
import 'package:water/visit_details_screen_collected.dart';
import 'package:water/visit_details_screen_public.dart';
import 'package:water/visit_details_screen_sales.dart';
import 'package:water/visits_history_screen.dart';
import 'package:water/visits_today_screen.dart';


void main() {
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff1D7AFC)),
        useMaterial3: true,
        fontFamily:'GE Dinar One'
      ),
      home: VisitDetailsScreenCollected(),      //VisitDetailsScreenPublic(),     //VisitDetailsScreenSales(),     //VisitDetailsScreenReturned(),    //PreviousInvoicesScreen(),     //VisitDetailsScreenPublic(),      //ErrorInServiceScreen(), //ErrorInNetworkScreen(),   //LoginScreen(),      //VisitsHistoryScreen(),    //VisitsTodayScreen(),      //AvailableProductsWhenAddProductScreen(),     //AvailableProductsScreen(),      //ReviewProductScreen(),         //AvailableItemsScreen(),       //ReviewReturnedProductsScreen(),     //InvoicesDetailsScreen()           //FinancialCollectionScreen(),        //TraderDetailsScreen(),        //AvailableProductsScreen(),           //InventoryScreen(), //RegisteredCustomersScreen(),    //VisitsTodayScreen(),          //HomeScreen(),         //SoldProductsScreen(),            
    );
  }
}
