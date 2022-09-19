import 'package:flutter/material.dart';
import 'package:flutter_starting_project/controllers/homepage_controller.dart';
import 'package:flutter_starting_project/widgets/TextFieldRound.dart';
import 'package:flutter_starting_project/widgets/header_widget.dart';
import 'package:flutter_starting_project/widgets/sidebar_widget.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomePageController> {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: HeaderWidget(
          pageTitle: "Page name",
          icon: Icons.menu,
          onPress: () {
            controller.controlMenu();
          },
        ),
      ),
      key: controller.scaffoldKey,
      drawer: const SidebarWidget(),
      body: SafeArea(
        child: Column(
          children:  [
            const Text("Hello World"),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFieldRound(),
            ),

            ElevatedButton(onPressed: (){}, child: Text("Click Me!",style: TextStyle(fontSize: 18),))

          ],
        ),
      ),
    );
  }
}
