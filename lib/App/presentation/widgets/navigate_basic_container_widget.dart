

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/widgets/trader_deal_container_item.dart';

class NavigateBasicContainer extends StatefulWidget {
  NavigateBasicContainer({super.key, this.userType = "B2C"});

  final String userType;

  @override
  State<NavigateBasicContainer> createState() => _NavigateBasicContainerState();
}

class _NavigateBasicContainerState extends State<NavigateBasicContainer> {
  int index = 0;
  List<ElementEntity> elements =[];
@override
  void initState() {
  elements = [
    ElementEntity(title: 'الرئيسية', image: 'assets/images/VectorHome.png', onClickStatus: index == 0),
    ElementEntity(title: 'الزيارات', image: 'assets/images/VectorVisits.png', onClickStatus: index == 1),
    ElementEntity(
        title: widget.userType == 'B2C' ? 'مرتجعات' : 'اوامر الشغل',
        image: widget.userType == 'B2C' ? 'assets/images/overView.png' : 'assets/images/IconWrapperrrrr.png',
        onClickStatus: index == 2),
    ElementEntity(title: 'العملاء', image: 'assets/images/VectorClints.png', onClickStatus: index == 3),
    ElementEntity(title: 'المخزن', image: 'assets/images/VectorBuild.png', onClickStatus: index == 4),
    ElementEntity(title: 'الحساب', image: 'assets/images/Vvvectorss.png', onClickStatus: index == 5),
  ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: LocalizeAndTranslate.getLanguageCode() == 'en' ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' أهلا محمود ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: elements.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index = i;
                            });
                            print("index : ${index}");
                          },
                          child: TraderDealContainerItem(
                            name: elements[i].title,
                            image: elements[i].image,
                            onClickStatus: elements[i].onClickStatus,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ElementEntity {
  final String title;
  final String image;
  final bool onClickStatus;

  ElementEntity({required this.title, required this.image, required this.onClickStatus});
}


