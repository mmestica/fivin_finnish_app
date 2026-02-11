class Phrase {
  final String en;
  final String fi;

  const Phrase(this.en, this.fi);

  factory Phrase.fromJson(Map<String, dynamic> json) {
    return Phrase(json['en'] as String, json['fi'] as String);
  }

  Map<String, dynamic> toJson() => {'en': en, 'fi': fi};
}
