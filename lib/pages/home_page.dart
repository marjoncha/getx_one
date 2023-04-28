import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_one/controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center
        ,
          children: [
            Center(
              child: Text(
                "${homeController.count.value}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      homeController.kamaytirish();
                    },
                    child: Text("-")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      homeController.oshirish();
                    },
                    child: Text("+")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
