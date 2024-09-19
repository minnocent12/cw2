import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      'name': 'Spaghetti Carbonara',
      'ingredients': 'Pasta, Eggs, Parmesan, Pancetta, Pepper',
      'instructions':
          '1. Cook the pasta.\n2. Fry the pancetta.\n3. Mix eggs and cheese.\n4. Combine everything together.'
    },
    {
      'name': 'Chicken Alfredo',
      'ingredients': 'Pasta, Chicken, Cream, Parmesan, Garlic',
      'instructions':
          '1. Cook the pasta.\n2. Cook the chicken.\n3. Prepare the Alfredo sauce.\n4. Combine and serve.'
    },
    {
      'name': 'Tacos',
      'ingredients': 'Tortillas, Beef, Lettuce, Cheese, Salsa',
      'instructions':
          '1. Cook the beef.\n2. Assemble the tacos with toppings.\n3. Serve and enjoy.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipes[index];
            return Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(
                  recipe['name']!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: const Icon(Icons.arrow_forward),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
