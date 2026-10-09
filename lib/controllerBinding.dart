import 'package:rick_morty/controllers/list_character_controller.dart';
import 'package:get/get.dart';
import 'package:rick_morty/model/list_characters_model.dart';


class Controllerbinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ListCharacterController>(()=> ListCharacterController());
  }
}