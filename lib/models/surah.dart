class Surah{
  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  int numberOfAyahs;
  String revelationType;

  Surah(int number, String name, String englishName,
      String englishNameTranslation, int numberOfAyahs,  String revelationType) {
    this.number = number;
    this.name = name;
    this.englishName = englishName;
    this.englishNameTranslation = englishNameTranslation;
    this.numberOfAyahs = numberOfAyahs;
    this.revelationType = revelationType;
  }

  Surah.fromJson(Map json)
      : number = json['number'],
        name = json['name'],
        englishName = json['englishName'],
        englishNameTranslation = json['englishNameTranslation'],
        numberOfAyahs = json['numberOfAyahs'],
        revelationType = json['revelationType'];

  Map toJson() {
    return {
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation' : englishNameTranslation,
      'numberOfAyahs' : numberOfAyahs,
      'revelationType' : revelationType,
    };
  }
}