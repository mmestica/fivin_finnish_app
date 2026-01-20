import 'package:fivin_finnish_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(category.icon, size: 48, color: Colors.blue),
            SizedBox(width: 10),
            Text(category.title),
          ],
        ),
      ),
      body: ListView.separated(
        itemCount: category.phrases.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final phrase = category.phrases[index];
          return ListTile(
            dense: true,
            visualDensity: const VisualDensity(
              vertical: -4, // minimum practical value
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 0,
            ),
            title: Text(phrase.finnish, style: const TextStyle(fontSize: 18)),
            subtitle: Text(
              phrase.english,
              style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
          );
        },
      ),
    );
  }
}
