
import 'package:flutter/material.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Store',
      initialRoute: 'menu',
      routes: {
        'menu': (context) => const MenuScreen(),
        'vegetable': (context) => const DetailScreen(
              name: 'Vegetable Pizza',
              image: 'assets/images/vegetable.png',
              description: 'A delicious pizza topped with fresh vegetables.',
            ),
        'cheese': (context) => const DetailScreen(
              name: 'Cheese Pizza',
              image: 'assets/images/cheese.png',
              description: 'A classic pizza loaded with melted cheese.',
            ),
        'fries': (context) => const DetailScreen(
              name: 'Box of Fries',
              image: 'assets/images/fries.png',
              description: 'Crispy golden fries served in a box.',
            ),
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'name': 'Vegetable Pizza',
        'image': 'assets/images/vegetable.png',
        'route': 'vegetable',
      },
      {
        'name': 'Cheese Pizza',
        'image': 'assets/images/cheese.png',
        'route': 'cheese',
      },
      {
        'name': 'Box of Fries',
        'image': 'assets/images/fries.png',
        'route': 'fries',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Store Menu'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: items.map((item) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: Image.asset(
                item['image']!,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Text(
                item['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, item['route']!);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  const DetailScreen({
    super.key,
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
