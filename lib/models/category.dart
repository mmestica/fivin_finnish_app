import 'package:fivin_finnish_app/models/phrase.dart';
import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final List<Phrase> phrases;

  const Category({
    required this.title,
    required this.icon,
    required this.phrases,
  });
}
