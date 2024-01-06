import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepedaa/pages/home/main_page.dart';
import 'package:sepedaa/pages/sepeda/sepeda_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SepedaDetailPage(),
    );
  }
}
