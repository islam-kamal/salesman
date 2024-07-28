import 'package:flutter/material.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/available_items_screen_details_land_scape.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/available_items_screen_details_protrait.dart';


class AvailableItemsScreenDetails extends StatelessWidget {
  AvailableItemsScreenDetails({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          //endDrawer: const DrawerPreviousInvoicesScreen(),
          key: _key,
          body: OrientationBuilder(
            builder: (context , orientation){
              return  Padding(
              padding: const EdgeInsets.only(right: 8, left: 8, top: 11),
              child: orientation == Orientation.portrait ?  AvailableItemsScreenDetailsProtrait()
              : AvailableItemsScreenDetailsLandScape(),
            );
            },
            
          ),
        ));
  }
}



