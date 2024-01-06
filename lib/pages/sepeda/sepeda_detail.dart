import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sepedaa/utils/colors.dart';
import 'package:sepedaa/utils/dimension.dart';
import 'package:sepedaa/widgets/app_column.dart';
import 'package:sepedaa/widgets/big_text.dart';
import 'package:sepedaa/widgets/icon_app.dart';

class SepedaDetailPage extends StatelessWidget {
  const SepedaDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.detailImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/sepeda2.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimension.height45,
            left: Dimension.width20,
            right: Dimension.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconApp(icon: Icons.arrow_back_ios_new),
                IconApp(icon: Icons.shopping_cart_rounded)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.detailImageSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimension.width20,
                    right: Dimension.width20,
                    top: Dimension.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Sepeda gunung"),
                    SizedBox(height: Dimension.height20),
                    BigText(text: "Deskripsi"),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(
            top: Dimension.height30,
            bottom: Dimension.height30,
            left: Dimension.width20,
            right: Dimension.height20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20 * 2),
            topRight: Radius.circular(Dimension.radius20 * 2),
          ),
        ),
      ),
    );
  }
}
