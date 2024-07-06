import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class FilesListViewItem extends StatelessWidget{
  const FilesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Shared.height * 0.003,
      height: Shared.height * 0.04,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 23, 23),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
    );
}
}