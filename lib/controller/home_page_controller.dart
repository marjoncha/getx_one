import 'package:get/get.dart';

class HomeController extends GetxController{
  var count =0.obs;

  oshirish(){
    count.value++;
  }

  kamaytirish(){
    count.value--;
  }

}




