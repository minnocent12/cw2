import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      'name': 'Spaghetti Carbonara',
      'ingredients': 'Pasta, Eggs, Parmesan, Pancetta, Pepper',
      'instructions':
          'Cook the pasta. Fry the pancetta. Mix eggs and cheese. Combine.'
    },
    {
      'name': 'Chicken Alfredo',
      'ingredients': 'Pasta, Chicken, Cream, Parmesan, Garlic',
      'instructions':
          'Cook the pasta. Cook the chicken. Prepare the sauce. Combine.'
    },
    {
      'name': 'Tacos',
      'ingredients': 'Tortillas, Beef, Lettuce, Cheese, Salsa',
      'instructions': 'Cook the beef. Assemble tacos with ingredients. Serve.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe['name']!),
            onTap: () {
              // Navigate to DetailsScreen and pass the recipe data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipe['name']!,
                    ingredients: recipe['ingredients']!,
                    instructions: recipe['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
