import 'package:rick_morty/controllers/list_character_controller.dart';
import 'package:get/get.dart';


class Controllerbinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPust<ListCharacterController>(()=> ListCharacterController());
  }
}