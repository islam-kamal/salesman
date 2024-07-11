import 'package:flutter/material.dart';

class FilesListViewItem extends StatelessWidget{
  const FilesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.07,
      height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/images/IMGFrame.png'
            ),
    );
}
}