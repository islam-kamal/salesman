import 'package:flutter/material.dart';

class PillContainer extends StatelessWidget{
  const PillContainer({super.key, required this.containerName});

final String containerName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'تصفية حسب',
              style: TextStyle(
                color: Color(0xff758195),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.04
                            : MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      containerName,
                      style: const TextStyle(
                        color: Color(0xff758195),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.035
                            : MediaQuery.of(context).size.width * 0.03,
                      color: const Color(0xff25292E),
                      ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}