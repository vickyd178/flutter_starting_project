import 'package:flutter_starting_project/controllers/homepage_controller.dart';
import 'package:flutter_starting_project/data/api/api_client.dart';
import 'package:flutter_starting_project/data/repository/home_repository.dart';
import 'package:flutter_starting_project/utils/app_constants.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    //Api Client Instance
    Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

    //Repository
    Get.lazyPut(() => HomeRepository(apiClient: Get.find()));

    //Controller Instance
    Get.lazyPut(() => HomePageController());



  }

}
