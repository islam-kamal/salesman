import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class ContainerInStoreDealContainer extends StatelessWidget {
  const ContainerInStoreDealContainer(
      {super.key,
      required this.name,
      required this.image,
      required this.color});

  final String name;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      focusColor: const Color.fromARGB(255, 30, 133, 219),
      hoverColor: const Color.fromARGB(255, 30, 133, 219),
      onLongPress: () => Colors.blue,
      child: MediaQuery.of(context).orientation == Orientation.portrait ?
      Container(
        width: Shared.width * 0.23,
        height: Shared.height * 0.04,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          child: Row(
            children: [
              Image.asset(
                image,
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.008,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      )
      : Container(
        width: Shared.width * 0.23,
        height: Shared.height * 0.06,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          child: Row(
            children: [
              Image.asset(
                image,
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.008,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
