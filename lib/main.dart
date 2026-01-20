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
      title: 'Basic Greetings',
      icon: Icons.waving_hand,
      phrases: [
        Phrase('Hi', 'Moi'),
        Phrase('Hello', 'Hei'),
        Phrase('Hey', 'Hei'),
        Phrase('Welcome', 'Tervetuloa'),
        Phrase('Welcome back', 'Tervetuloa takaisin'),
        Phrase('Good morning', 'Hyvää huomenta'),
        Phrase('Good afternoon', 'Hyvää päivää'),
        Phrase('Good evening', 'Hyvää iltaa'),
        Phrase('Good night', 'Hyvää yötä'),
        Phrase('Goodbye', 'Näkemiin'),
        Phrase('Bye', 'Hei hei'),
        Phrase('See you later', 'Nähdään myöhemmin'),
        Phrase('See you tomorrow', 'Nähdään huomenna'),
        Phrase('Long time no see', 'Pitkästä aikaa'),
        Phrase('How are you?', 'Mitä kuuluu?'),
        Phrase('Nice to meet you', 'Hauska tavata'),
        Phrase("What's your name?", 'Mikä sinun nimesi on?'),
        Phrase('My name is…', 'Nimeni on…'),
        Phrase('Please', 'Ole hyvä'),
        Phrase('Thank you', 'Kiitos'),
        Phrase('Thanks a lot', 'Paljon kiitoksia'),
        Phrase('You’re welcome', 'Ei kestä'),
        Phrase('Sorry', 'Anteeksi'),
        Phrase('Excuse me', 'Anteeksi'),
        Phrase('Take care', 'Pidä huolta'),
        Phrase('Have a nice day', 'Mukavaa päivää'),
        Phrase('Have a good weekend', 'Hyvää viikonloppua'),
        Phrase('Bless you', 'Terveydeksi'),
        Phrase('Cheers', 'Kippis'),
        Phrase('Good luck', 'Onnea'),
      ],
    ),

    Category(
      title: 'Common Phrases',
      icon: Icons.chat,
      phrases: [
        Phrase('Yes', 'Kyllä'),
        Phrase('No', 'Ei'),
        Phrase('Maybe', 'Ehkä'),
        Phrase('Of course', 'Totta kai'),
        Phrase('Okay', 'Okei'),
        Phrase('Please', 'Ole hyvä'),
        Phrase('Thank you', 'Kiitos'),
        Phrase('You’re welcome', 'Ei kestä'),
        Phrase('Sorry', 'Anteeksi'),
        Phrase('Excuse me', 'Anteeksi'),
        Phrase('I understand', 'Ymmärrän'),
        Phrase('I don’t understand', 'En ymmärrä'),
        Phrase('Can you help me?', 'Voitko auttaa minua?'),
        Phrase('What does this mean?', 'Mitä tämä tarkoittaa?'),
        Phrase('How much is this?', 'Paljonko tämä maksaa?'),
        Phrase('Too expensive', 'Liian kallis'),
        Phrase('Cheap', 'Halpa'),
        Phrase('Where?', 'Missä?'),
        Phrase('When?', 'Milloin?'),
        Phrase('Why?', 'Miksi?'),
        Phrase('What?', 'Mitä?'),
        Phrase('Who?', 'Kuka?'),
        Phrase('Which?', 'Mikä?'),
        Phrase('Again, please', 'Uudestaan, kiitos'),
        Phrase('Slower, please', 'Hitaammin, kiitos'),
        Phrase('Faster, please', 'Nopeammin, kiitos'),
        Phrase('That’s good', 'Se on hyvä'),
        Phrase('No problem', 'Ei ongelmaa'),
        Phrase('I agree', 'Olen samaa mieltä'),
        Phrase('I disagree', 'Olen eri mieltä'),
      ],
    ),

    Category(
      title: 'Numbers',
      icon: Icons.numbers,
      phrases: [
        Phrase('Zero', 'Nolla'),
        Phrase('One', 'Yksi'),
        Phrase('Two', 'Kaksi'),
        Phrase('Three', 'Kolme'),
        Phrase('Four', 'Neljä'),
        Phrase('Five', 'Viisi'),
        Phrase('Six', 'Kuusi'),
        Phrase('Seven', 'Seitsemän'),
        Phrase('Eight', 'Kahdeksan'),
        Phrase('Nine', 'Yhdeksän'),
        Phrase('Ten', 'Kymmenen'),
        Phrase('Eleven', 'Yksitoista'),
        Phrase('Twelve', 'Kaksitoista'),
        Phrase('Thirteen', 'Kolmetoista'),
        Phrase('Fourteen', 'Neljätoista'),
        Phrase('Fifteen', 'Viisitoista'),
        Phrase('Sixteen', 'Kuusitoista'),
        Phrase('Seventeen', 'Seitsemäntoista'),
        Phrase('Eighteen', 'Kahdeksantoista'),
        Phrase('Nineteen', 'Yhdeksäntoista'),
        Phrase('Twenty', 'Kaksikymmentä'),
        Phrase('Thirty', 'Kolmekymmentä'),
        Phrase('Forty', 'Neljäkymmentä'),
        Phrase('Fifty', 'Viisikymmentä'),
        Phrase('Hundred', 'Sata'),
        Phrase('Thousand', 'Tuhat'),
        Phrase('First', 'Ensimmäinen'),
        Phrase('Second', 'Toinen'),
        Phrase('Third', 'Kolmas'),
        Phrase('How many?', 'Kuinka monta?'),
      ],
    ),

    Category(
      title: 'Food',
      icon: Icons.restaurant,
      phrases: [
        Phrase('Food', 'Ruoka'),
        Phrase('Water', 'Vesi'),
        Phrase('Coffee', 'Kahvi'),
        Phrase('Tea', 'Tee'),
        Phrase('Milk', 'Maito'),
        Phrase('Bread', 'Leipä'),
        Phrase('Butter', 'Voi'),
        Phrase('Cheese', 'Juusto'),
        Phrase('Meat', 'Liha'),
        Phrase('Fish', 'Kala'),
        Phrase('Chicken', 'Kana'),
        Phrase('Vegetables', 'Vihannekset'),
        Phrase('Fruit', 'Hedelmät'),
        Phrase('Soup', 'Keitto'),
        Phrase('Salad', 'Salaatti'),
        Phrase('Dessert', 'Jälkiruoka'),
        Phrase('Breakfast', 'Aamiainen'),
        Phrase('Lunch', 'Lounas'),
        Phrase('Dinner', 'Illallinen'),
        Phrase('Menu', 'Ruokalista'),
        Phrase('Restaurant', 'Ravintola'),
        Phrase('Bill, please', 'Lasku, kiitos'),
        Phrase('Delicious', 'Herkullinen'),
        Phrase('Spicy', 'Tulinen'),
        Phrase('Sweet', 'Makea'),
        Phrase('Salty', 'Suolainen'),
        Phrase('I am hungry', 'Minulla on nälkä'),
        Phrase('I am thirsty', 'Minulla on jano'),
        Phrase('No meat', 'Ei lihaa'),
        Phrase('Vegetarian', 'Kasvissyöjä'),
      ],
    ),

    Category(
      title: 'Travel',
      icon: Icons.flight,
      phrases: [
        Phrase('Travel', 'Matkustaa'),
        Phrase('Where is the hotel?', 'Missä hotelli on?'),
        Phrase('Hotel', 'Hotelli'),
        Phrase('Hostel', 'Hostelli'),
        Phrase('Bus', 'Bussi'),
        Phrase('Train', 'Juna'),
        Phrase('Taxi', 'Taksi'),
        Phrase('Airport', 'Lentokenttä'),
        Phrase('Ticket', 'Lippu'),
        Phrase('Station', 'Asema'),
        Phrase('Bus stop', 'Pysäkki'),
        Phrase('Map', 'Kartta'),
        Phrase('Left', 'Vasen'),
        Phrase('Right', 'Oikea'),
        Phrase('Straight ahead', 'Suoraan eteenpäin'),
        Phrase('Near', 'Lähellä'),
        Phrase('Far', 'Kaukana'),
        Phrase('Entrance', 'Sisäänkäynti'),
        Phrase('Exit', 'Uloskäynti'),
        Phrase('Open', 'Auki'),
        Phrase('Closed', 'Kiinni'),
        Phrase('Reservation', 'Varaus'),
        Phrase('Passport', 'Passi'),
        Phrase('Luggage', 'Matkatavarat'),
        Phrase('Help desk', 'Infopiste'),
        Phrase('Tourist', 'Turisti'),
        Phrase('Guide', 'Opas'),
        Phrase('City center', 'Keskusta'),
        Phrase('Beach', 'Ranta'),
        Phrase('Museum', 'Museo'),
      ],
    ),

    Category(
      title: 'Emergency',
      icon: Icons.warning,
      phrases: [
        Phrase('Help!', 'Apua!'),
        Phrase('Emergency', 'Hätätilanne'),
        Phrase('Call the police', 'Soita poliisille'),
        Phrase('Police', 'Poliisi'),
        Phrase('Fire', 'Tuli'),
        Phrase('Fire department', 'Palokunta'),
        Phrase('Ambulance', 'Ambulanssi'),
        Phrase('I need a doctor', 'Tarvitsen lääkärin'),
        Phrase('Doctor', 'Lääkäri'),
        Phrase('Hospital', 'Sairaala'),
        Phrase('Pharmacy', 'Apteekki'),
        Phrase('I am hurt', 'Olen loukkaantunut'),
        Phrase('I am sick', 'Olen sairas'),
        Phrase('It hurts here', 'Tähän sattuu'),
        Phrase('I feel dizzy', 'Minua huimaa'),
        Phrase('I lost my passport', 'Kadotin passini'),
        Phrase('I was robbed', 'Minut ryöstettiin'),
        Phrase('I am lost', 'Olen eksynyt'),
        Phrase('Danger', 'Vaara'),
        Phrase('Stay back', 'Pysykää loitolla'),
        Phrase('Call an ambulance', 'Soita ambulanssi'),
        Phrase('I need help now', 'Tarvitsen apua nyt'),
        Phrase('Is it safe?', 'Onko turvallista?'),
        Phrase('I need medicine', 'Tarvitsen lääkettä'),
        Phrase('Allergic', 'Allerginen'),
        Phrase('Pain', 'Kipu'),
        Phrase('Bleeding', 'Verenvuoto'),
        Phrase('Unconscious', 'Tajuton'),
        Phrase('Breathe', 'Hengitä'),
        Phrase('Stay calm', 'Pysy rauhallisena'),
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
