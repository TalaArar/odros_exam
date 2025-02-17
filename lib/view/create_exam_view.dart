import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:flutterweb_priv/utils/colors.dart';
import 'package:flutterweb_priv/utils/custome_container.dart';
import 'package:get/get.dart';

class CreateExamView extends GetView<ExamController> {
  const CreateExamView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.darkBlue,

      body:  Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Text('انشاء امتحان'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
          Container(
          height: Get.height*(4/100),
      width: Get.width*0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey,width: 2)

      ),

      child: Center(child: Text("اختر المادة")),

    ),

              Container(
                height: Get.height*(4/100),
                width: Get.width*0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey,width: 2)

                ),

                child: Center(child: Text("اختر الصف")),

              ),



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomeContainer(
                text: "اختر الدرس",
              ),
              CustomeContainer(
                text: "اختر الوحدة",
              ),



            ],
          ),

          SizedBox(
            height: Get.height*(4/100),
            width: Get.width*0.6,
            child: TextFormField(


              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10)),
                hintText: 'اكتب السؤال',
                hintStyle: TextStyle(color: Colors.black26,),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
             Obx(
             ()=> Checkbox(value: controller.isCheked1.value, onChanged: (value) {
                       controller.isCheked1.value=value!;
               },),
             )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked2.value, onChanged: (value) {
                  controller.isCheked2.value=value!;
                },),
              )
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked3.value, onChanged: (value) {
                  controller.isCheked3.value=value!;
                },),
              )
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked4.value, onChanged: (value) {
                  controller.isCheked4.value=value!;
                },),
              )
            ],
          ),
          SizedBox(
            height: Get.height*(4/100),
            width: Get.width*0.6,
            child: TextFormField(


              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10)),
                hintText: 'اكتب السؤال',
                hintStyle: TextStyle(color: Colors.black26,),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked5.value, onChanged: (value) {
                  controller.isCheked5.value=value!;
                },),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked6.value, onChanged: (value) {
                  controller.isCheked6.value=value!;
                },),
              )
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked7.value, onChanged: (value) {
                  controller.isCheked7.value=value!;
                },),
              )
            ],
          ), Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.2,
                child: TextFormField(


                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'الاجابة',
                    hintStyle: TextStyle(color: Colors.black26,),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Obx(
                    ()=> Checkbox(value: controller.isCheked8.value, onChanged: (value) {
                  controller.isCheked8.value=value!;
                },),
              )
            ],
          ),
         ElevatedButton(
           style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12), // <-- Radius
               ),
             fixedSize: Size(Get.width*0.7, Get.height*0.07),
             backgroundColor: AppColors.darkBlue
           ),
           child: Text("حفظ"),
           onPressed: () {

         },

         )
        ],
      )
    );
  }
}


