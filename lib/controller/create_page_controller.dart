import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_one/model/post.dart';
import 'package:getx_one/services/api_service.dart';

class CreateController extends GetxController{
  RxBool isLoading =false.obs;
  final TextEditingController bodyC=TextEditingController();
  final TextEditingController titleC=TextEditingController();
  createPost(BuildContext context){
    isLoading.value=true;
    Post post =Post(userId: 11, id: 11, title: bodyC.text, body: titleC.text);
     ApiService.createPost(post).then((value) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(value.title!)));
      isLoading.value = false;
      
    });
  }
  
  updatePost(BuildContext context) {
    isLoading.value = true;

    Post post = Post(userId: 11, id: 11, title: bodyC.text, body: titleC.text);
    ApiService.putPost(post).then((value) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Yangilandi ${value.title!}")));

      isLoading.value = false;

      Navigator.pop(context);
    });
}}