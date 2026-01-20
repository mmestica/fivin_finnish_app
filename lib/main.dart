import 'package:fivin_finnish_app/category_page.dart';
import 'package:fivin_finnish_app/models/category.dart';
import 'package:fivin_finnish_app/models/phrase.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Learn Finnish'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Category> categories = const [
    Category(
      title: 'Greetings',
      icon: Icons.waving_hand,
      phrases: [
        Phrase('Hello', 'Hei'),
        Phrase('Good morning', 'Hyvää huomenta'),
        Phrase('Good evening', 'Hyvää iltaa'),
        Phrase('Goodbye', 'Näkemiin'),
      ],
    ),
    Category(
      title: 'Common Phrases',
      icon: Icons.chat,
      phrases: [
        Phrase('Thank you', 'Kiitos'),
        Phrase('Please', 'Ole hyvä'),
        Phrase('Yes', 'Kyllä'),
        Phrase('No', 'Ei'),
        Phrase('Excuse me', 'Anteeksi'),
      ],
    ),
    Category(
      title: 'Numbers',
      icon: Icons.numbers,
      phrases: [
        Phrase('One', 'Yksi'),
        Phrase('Two', 'Kaksi'),
        Phrase('Three', 'Kolme'),
        Phrase('Four', 'Neljä'),
        Phrase('Five', 'Viisi'),
      ],
    ),
    Category(
      title: 'Food',
      icon: Icons.restaurant,
      phrases: [
        Phrase('Food', 'Ruoka'),
        Phrase('Water', 'Vesi'),
        Phrase('Coffee', 'Kahvi'),
        Phrase('Bread', 'Leipä'),
        Phrase('Delicious', 'Herkullinen'),
      ],
    ),
    Category(
      title: 'Travel',
      icon: Icons.flight,
      phrases: [
        Phrase('Where is the hotel?', 'Missä hotelli on?'),
        Phrase('Bus', 'Bussi'),
        Phrase('Train', 'Juna'),
        Phrase('Airport', 'Lentokenttä'),
      ],
    ),
    Category(
      title: 'Emergency',
      icon: Icons.warning,
      phrases: [
        Phrase('Help!', 'Apua!'),
        Phrase('Call the police', 'Soita poliisille'),
        Phrase('I need a doctor', 'Tarvitsen lääkärin'),
        Phrase('Emergency', 'Hätätilanne'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn Finnish'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CategoryPage(category: category),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category.icon, size: 48, color: Colors.blue),
                  const SizedBox(height: 12),
                  Text(
                    category.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
