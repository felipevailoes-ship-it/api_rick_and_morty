import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_morty/model/list_characters_model.dart';

class CharacterService {
  String url = "https://rickandmortyapi.com/api/character";
  dynamic _response;
  CharacterService(){
    _response = "";
  }
  Future<ListCharacters> fetchListCharacters() async{
    _response = await http.get(Uri.parse(url));
    if (_response.statusCode == 200){
      Map<String, dynamic> retorno = json.decode(_response.body);
      return ListCharacters.fromJson(retorno);
    } else
      throw Exception('Retorno com erro');
  }
}