import 'package:flutter/material.dart';
import 'package:water/basics/dialogs.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/profile_details.dart';
import 'package:water/widgets/profile_note_container.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'حسابك',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const ProfileNoteContainer(),
                    const ProfileDetails(
                      gender: 'ذكر',
                      name: 'يوسف علي محمد سالم',
                      cardNumber: '6677889900',
                      employerNumber: '1122334455',
                      email: 'yousuf.ali@yanabie.com',
                      phone: '+966501234567',
                      employment: 'مندوب بيع',
                      employerDate: '2015 / 03 / 15',
                    ),
                  ],
                ),
              ),
    );
  }
}
