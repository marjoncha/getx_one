import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/create_page_controller.dart';


class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final createController = Get.put(CreateController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: Center(
            child: createController.isLoading.value
                ? const CircularProgressIndicator.adaptive()
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: createController.bodyC,
                          decoration: const InputDecoration(hintText: "body"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: createController.titleC,
                          decoration: const InputDecoration(hintText: "title"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  createController.updatePost(context);
                                },
                                child: const Text("Update")),
                            const SizedBox(
                              width: 16,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  createController.createPost(context);
                                },
                                child: const Text("Post")),
                          ],
                        ),
                      ],
                    ),
                  ),
          ),
        ));
  }
}
