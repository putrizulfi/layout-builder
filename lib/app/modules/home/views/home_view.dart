import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.amber,
          child: LayoutBuilder(builder: (context, constraints) {
            double lebarKuning = constraints.maxWidth;
            double tinggiKuning = constraints.maxHeight;
            return Center(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(70),
                  width: lebarKuning * 0.6,
                  height: tinggiKuning * 0.5,
                  color: Colors.red,
                ),
              ],
            ));
          })),
    );
  }
}
