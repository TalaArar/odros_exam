import 'package:get/get.dart';


class ExamController extends GetxController{
   
    RxBool isCheked=false.obs;
    RxBool isCheked1=false.obs;
    RxInt selectedIndex=0.obs;
   final RxInt selectedIndex1=0.obs;

   void selectedAnswer(int index){
    if(selectedIndex==index){
      isCheked=true.obs;
    }
   }

   

}