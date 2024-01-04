import 'package:flutter/material.dart';
import 'package:sepedaa/utils/colors.dart';
import 'package:sepedaa/utils/dimension.dart';
import 'package:sepedaa/widgets/big_text.dart';
import 'package:sepedaa/widgets/mini_text.dart';

import 'package:sepedaa/home/page_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // print("curret height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(children: [
      Container(
        child: Container(
          margin: EdgeInsets.only(
              top: Dimension.height45, bottom: Dimension.height15),
          padding: EdgeInsets.only(
              left: Dimension.width20, right: Dimension.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: "Indonesia",
                    color: AppColors.mainCo,
                    size: 30,
                  ),
                  Row(
                    children: [
                      MiniText(
                        text: "Palangka Raya",
                        color: Colors.black54,
                      ),
                      const Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: Dimension.height45,
                  height: Dimension.height45,
                  child: Icon(Icons.search,
                      color: Colors.white, size: Dimension.iconSize24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    color: AppColors.mainCo,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      const Expanded(child: SingleChildScrollView(child: PageBody())),
    ]));
  }
}
