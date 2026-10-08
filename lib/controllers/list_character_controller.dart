import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rick_morty/model/character_model.dart';
import 'package:rick_morty/services/character_service.dart';

class ListCharacterController extends GetxController{
  CharacterService characterService = CharacterService();
  var isLoading = false.obs;
  var listCharactersObs = <CharacterModel>[].obs;
  static ListCharacterController get listsCharacters => Get.find();
  Future<dynamic> listCharacters() async{
    isLoading.value = true;
    var list = await characterService.fetchListCharacters();
    listCharactersObs.value = list.listCharacters;
    isLoading.value = false;
    return listCharactersObs;
  }
}