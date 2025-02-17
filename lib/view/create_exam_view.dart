
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

      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
        
            const Text('انشاء امتحان'),
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
        
        child: const Center(child: Text("اختر المادة")),
        
            ),
        
                Container(
                  height: Get.height*(4/100),
                  width: Get.width*0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey,width: 2)
        
                  ),
        
                  child: const Center(child: Text("اختر الصف")),
        
                ),
        
        
        
              ],
            ),
            const Row(
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
        
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.8,
                child: TextFormField(
              
              
                  decoration: InputDecoration(
                    
                    hintTextDirection:TextDirection.rtl,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'اكتب السؤال',
                    hintStyle: const TextStyle(color: Colors.black26,),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
               Obx(
               ()=> Checkbox(value: controller.isCheked.value, onChanged: (value) {
                       controller.selectedAnswer(0);

                 },),
               )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Obx(
               ()=> Checkbox(value: controller.isCheked.value, onChanged: (value) {
                      

                 },),
               )
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Obx(
               ()=> Checkbox(value: controller.isCheked.value, onChanged: (value) {
                       controller.selectedAnswer(2);

                 },),
               )
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                 Obx(
               ()=> Checkbox(value: controller.isCheked.value, onChanged: (value) {
                       controller.selectedAnswer(3);
                       

                 },),
               )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
        
              child: SizedBox(
                height: Get.height*(4/100),
                width: Get.width*0.8,
                child: TextFormField(
              
              
                  decoration: InputDecoration(
                     hintTextDirection:TextDirection.rtl,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'اكتب السؤال',
                    hintStyle: const TextStyle(color: Colors.black26,),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Obx(
               ()=> Checkbox(value: controller.isCheked1.value, onChanged: (value) {
                        if(controller.selectedIndex==0.obs){
                          controller.isCheked1.value=value!;
                        }

                 },),
               )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                 Obx(
               ()=> Checkbox(value: controller.isCheked1.value, onChanged: (value) {
                        if(controller.selectedIndex==1.obs){
                          controller.isCheked1.value=value!;
                        }

                 },),
               )
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Obx(
               ()=> Checkbox(value: controller.isCheked1.value, onChanged: (value) {
                        if(controller.selectedIndex==2.obs){
                          controller.isCheked1.value=value!;
                        }

                 },),
               )
              ],
            ), Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
        
                SizedBox(
                  height: Get.height*(4/100),
                  width: Get.width*0.2,
                  child: TextFormField(
        
        
                    decoration: InputDecoration(
                       hintTextDirection:TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'الاجابة',
                      hintStyle: const TextStyle(color: Colors.black26,),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                 Obx(
               ()=> Checkbox(value: controller.isCheked1.value, onChanged: (value) {
                        if(controller.selectedIndex==3.obs){
                          controller.isCheked1.value=value!;
                        }

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
             child: const Text("حفظ"),
             onPressed: () {
        
           },
        
           )
          ],
        ),
      )
    );
  }
}


