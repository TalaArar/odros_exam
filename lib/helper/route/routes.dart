import 'package:flutterweb_priv/helper/route/routes_string.dart';
import 'package:flutterweb_priv/view/create_exam_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? pages=[
  GetPage(name: RoutesString.createExam, page: ()=> const CreateExamView())

];