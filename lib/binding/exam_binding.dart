import 'package:flutterweb_priv/controller/exam_controller.dart';
import 'package:get/get.dart';

class ExamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExamController>(()=>ExamController());
  }
}
