import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:water/basics/shared.dart';

class TakePhoto extends StatelessWidget {
  const TakePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: Color.fromARGB(255, 228, 224, 224),
        dashPattern: const [12, 14],
        strokeWidth: 2,
        child: Container(
          width: double.infinity,
          height: Shared.height * 0.044,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'اضف صورة',
                style: TextStyle(
                  color: Color(0xff1D7AFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: Shared.width * 0.005,
              ),
              const Icon(
                Icons.add_circle_outline,
                color: Color(0xff1D7AFC),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
