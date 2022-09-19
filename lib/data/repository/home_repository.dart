import 'package:flutter_starting_project/data/api/api_client.dart';
import 'package:flutter_starting_project/utils/app_constants.dart';
import 'package:get/get.dart';

class HomeRepository extends GetxService {
  final ApiClient apiClient;

  HomeRepository({required this.apiClient});

  Future<Response> getCategories() async {
    return apiClient.getData(AppConstants.CATEGORIES_URL);
  }

  Future<Response> getCategoriesByArea(area) async {
    return apiClient.getData(AppConstants.CATEGORIES_BY_AREA_URL + area);
  }

  Future<Response> getAreas() async {
    return apiClient.getData(AppConstants.AREA_URL);
  }

  Future<Response> filterDishesByCategory(category) async {
    return apiClient.getData(AppConstants.FILTER_URL + "?c=$category");
  }
}
