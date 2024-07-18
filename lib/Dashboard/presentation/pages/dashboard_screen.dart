import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Profile/presentation/pages/profile_screen.dart';

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: _Page(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: 'اضافة',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));

          },
        ),

      ]
    );
  }

}

class _Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PageState();
  }
}

class _PageState extends State<_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Container(
              color: Colors.grey.shade200,
              child: Center(
                child: Text("Dashboard"),
              ),
            )));
  }
}
