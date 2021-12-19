import 'package:get/get.dart';

class Controller extends GetxController {
  int counterHelloId = 0;
  int counterHiId = 0;
  int counterWithoutId = 0;

  void incrementHelloId() {
    counterHelloId++;
    update(['Hello']); //this id use in GetBuilder id parameter
  }

  void incrementHiId() {
    counterHiId++;
    update(['Hi']); // this id use in GetBuilder id parameter
  }

  void incrementWithoutId() {
    counterWithoutId++;
    update(); //  this is without id
  }

  //  down are optional, I am not using down method in this project.

  @override
  void onInit() {
    // called immediately after the widget is allocated memory
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // called after the widget is rendered on screen
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // called just before the Controller is deleted from memory
    // TODO: implement onClose
    super.onClose();
  }
}
