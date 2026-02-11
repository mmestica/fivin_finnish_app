import 'package:flutter/material.dart';
import 'phrase.dart';

class Category {
  final String title;
  final IconData icon;
  final List<Phrase> phrases;

  const Category({
    required this.title,
    required this.icon,
    required this.phrases,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'] as String,
      icon: iconFromString(json['icon'] as String),
      phrases:
          (json['phrases'] as List)
              .map((p) => Phrase.fromJson(p as Map<String, dynamic>))
              .toList(),
    );
  }
}

/// Map strings in JSON -> Material icons you want to allow
IconData iconFromString(String name) {
  switch (name) {
    case 'waving_hand':
      return Icons.waving_hand;
    case 'chat':
      return Icons.chat;
    case 'numbers':
      return Icons.numbers;
    case 'restaurant':
      return Icons.restaurant;
    case 'flight':
      return Icons.flight;
    case 'warning':
      return Icons.warning;
    default:
      return Icons.category;
  }
}
