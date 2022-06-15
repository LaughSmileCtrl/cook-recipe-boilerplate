import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/recipe/recipe_list.dart';

class RecipeApi {
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  RecipeApi(this._dioClient, this._restClient);

  Future<RecipeList> getRecipes() async {
    try {
      final res = await _dioClient.get(Endpoints.getRecipes);
      return RecipeList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}