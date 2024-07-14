import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../App/presentation/pages/app_screen.dart';
import '../../../App/presentation/widgets/app_home_button_widget.dart';

class ClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: _Page(),
      button:[
        AppButtonWidget(
          asset: 'assets/images/add.png',
          text: 'اضافة عميل',
          onClick: () {},
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              color: Colors.grey.shade200,
              child: Center(
                child: Text("Clients"),
              ),
            )));
  }
}
