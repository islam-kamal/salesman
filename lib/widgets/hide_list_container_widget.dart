import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';


class HideListContainer extends StatelessWidget {
  HideListContainer({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaQuery.of(context).orientation == Orientation.portrait ?
        Container(
          width: Shared.width * 0.23,
          height: Shared.height * 0.041,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                InkWell(
                  onTap: () => _key.currentState!.openDrawer(),
                  child: const ImageIcon(
                      AssetImage('assets/images/Icon-Wrappppper.png')),
                ),
                SizedBox(
                  width: Shared.width * 0.01,
                ),
                const Opacity(
                  opacity: 0.8,
                  child: Text('اخفاء القائمة'),
                ),
              ],
            ),
          ),
        )
        : Container(
          width: Shared.width * 0.24,
          height: Shared.height * 0.052,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                InkWell(
                  onTap: () => _key.currentState!.openDrawer(),
                  child: const ImageIcon(
                      AssetImage('assets/images/Icon-Wrappppper.png')),
                ),
                SizedBox(
                  width: Shared.width * 0.01,
                ),
                const Opacity(
                  opacity: 0.8,
                  child: Text('اخفاء القائمة'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
