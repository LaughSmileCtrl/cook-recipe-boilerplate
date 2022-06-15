import 'package:boilerplate/data/network/apis/recipes/recipe_api.dart';
import 'package:boilerplate/di/components/service_locator.dart';
import 'package:boilerplate/models/recipe/recipe_list.dart';
import 'package:boilerplate/ui/screens/profile/profile_screen.dart';
import 'package:boilerplate/ui/screens/details/details-screen.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    RecipeApi _recipeApi = getIt<RecipeApi>();

    return SingleChildScrollView(
      child: FutureBuilder(
        future: _recipeApi.getRecipes(),
        builder: (context, AsyncSnapshot<RecipeList> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var recipeList = snapshot.data?.recipes.map((recipe) =>
                ItemCard(title: recipe.name,
                    shopName: '',
                    image: recipe.image,
                    press: () {}))
                .toList();

            return Column(
              children: recipeList!,
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
