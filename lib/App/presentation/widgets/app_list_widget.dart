import 'package:flutter/material.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';
import 'package:water/Inventory/presentation/pages/inventory_screen.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';
import 'package:water/Visits/presentation/pages/visits_screen.dart';

import '../../domain/entities/main_element.dart';

class AppListWidget extends StatefulWidget {
  const AppListWidget({super.key});

  @override
  State<AppListWidget> createState() => _AppListWidgetState();
}

class _AppListWidgetState extends State<AppListWidget> {
  int currentIndex = 0;
  List<MainElement> homeList = [
    MainElement(
      asset: 'assets/images/Dashboard.png',
      text: 'الرئيسية',
    ),
    MainElement(
      asset: 'assets/images/visits.png',
      text: 'الزيارات',
    ),
    MainElement(
      asset: 'assets/images/clients.png',
      text: 'العملاء',
    ),
    MainElement(
      asset: 'assets/images/inventory.png',
      text: 'المخزن',
    ),
    MainElement(
      asset: 'assets/images/profile.png',
      text: 'الحساب',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: MediaQuery.of(context).size.height * 0.30,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 5),child: Text(
                  'أهلاً محمود',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                            switch(index){
                              case 0:
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> DashboardScreen()));
                                break;
                              case 1:
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> VisitsScreen()));
                                break;
                              case 2:
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ClientsScreen()));

                                break;
                              case 3:
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> InventoryScreen()));

                              break;
                              case 4:
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ProfileScreen()));

                                break;
                              case 5:
                                break;
                            }
                          },

                          child: mainListElement(
                              status: homeList.indexOf(homeList[index]) ==
                                  currentIndex,
                              mainElement: homeList[index]));
                    })

              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget mainListElement(
      {required MainElement mainElement, required bool status}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.005,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.23,
        height: MediaQuery.of(context).size.height * 0.041,
        decoration: BoxDecoration(
            color: status ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Image.asset(
                mainElement.asset,
                color: Colors.black,
                scale: 1.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.010,
              ),
              Text(
                mainElement.text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

