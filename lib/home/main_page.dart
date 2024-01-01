import 'package:flutter/material.dart';
import 'package:sepedaa/utils/colors.dart';
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
    return Scaffold(
        body: Column(children: [
      Container(
        child: Container(
          margin: EdgeInsets.only(top: 45, bottom: 15),
          padding: EdgeInsets.only(left: 20, right: 20),
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
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainCo,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      PageBody(),
    ]));
  }
}
