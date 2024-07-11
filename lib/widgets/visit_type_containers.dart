import 'package:flutter/material.dart';

class VisitTypeContainers extends StatelessWidget {
  const VisitTypeContainers(
      {super.key,
      required this.textFirstContainer,
      required this.textSecondContainer,
      required this.textThirdContainer});

  final String textFirstContainer;
  final String textSecondContainer;
  final String textThirdContainer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 3,
            child: Text(
              'تصفية حسب',
              style: TextStyle(
                  color: Color(0xff758195),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )),
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.07,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.064,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text(
                  textFirstContainer,
                  style: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.025,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.07,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.064,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text(
                 textSecondContainer,
                  style: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.025,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.07,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.064,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Text(
                    textThirdContainer,
                  style: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
