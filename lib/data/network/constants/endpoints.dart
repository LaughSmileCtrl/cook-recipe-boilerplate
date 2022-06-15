class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://62a9c8dc3b314385543b789d.mockapi.io/api/v1";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";

  static const String getRecipes = baseUrl + "/cook-recipes";
}