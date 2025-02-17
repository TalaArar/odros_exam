
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomeContainer extends StatelessWidget {

  const CustomeContainer({
    required this.text,
    super.key,

  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*(4/100),
      width: Get.width*0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey,width: 2)

      ),

      child: Center(child: Text(text)),

    );
  }
}