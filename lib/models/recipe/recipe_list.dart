// To parse this JSON data, do
//
//     final recipeList = recipeListFromJson(jsonString);

import 'package:boilerplate/models/recipe/recipe.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

RecipeList recipeListFromJson(String str) => RecipeList.fromJson(json.decode(str));

String recipeListToJson(RecipeList data) => json.encode(data.toJson());

class RecipeList {
  RecipeList({
    required this.total,
    required this.recipes,
  });

  int total;
  List<Recipe> recipes;

  factory RecipeList.fromJson(Map<String, dynamic> json) => RecipeList(
    total: json["total"],
    recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
  };
}

