import 'package:fivin_finnish_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.separated(
        itemCount: category.phrases.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final phrase = category.phrases[index];
          return ListTile(
            // leading: const Icon(Icons.volume_up),
            title: Text(phrase.english, style: const TextStyle(fontSize: 18)),
            subtitle: Text(
              phrase.finnish,
              style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
          );
        },
      ),
    );
  }
}
