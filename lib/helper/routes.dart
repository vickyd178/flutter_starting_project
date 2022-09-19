import 'package:flutter_starting_project/bindings/home_bindings.dart';
import 'package:flutter_starting_project/pages/homepage.dart';
import 'package:get/get.dart';

class Routes{
  static const String INITIAL = "/";
  static const String SECOND = "/second";


  static final routes = [
    GetPage(name: INITIAL, page:  HomePage().obs,binding: HomeBinding()),
  ];
}