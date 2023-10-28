class ResponseModel {
  List<Breed> breeds;
  String id;
  String url;
  int width;
  int height;

  ResponseModel({
    required this.breeds,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      breeds: List<Breed>.from(json['breeds'].map((x) => Breed.fromJson(x))),
      id: json['id'],
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }
}

class Breed {
  final String weightImperial;
  final String weightMetric;
  final String id;
  final String name;
  final String cfaUrl;
  final String vetstreetUrl;
  final String vcahospitalsUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int indoor;
  final int lap;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int catFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int bidability;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final String wikipediaUrl;
  final int hypoallergenic;
  final String referenceImageId;

  Breed({
    required this.weightImperial,
    required this.weightMetric,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.catFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.bidability,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
  });

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
      weightImperial: json['weight']['imperial'],
      weightMetric: json['weight']['metric'],
      id: json['id'],
      name: json['name'],
      cfaUrl: json['cfa_url'],
      vetstreetUrl: json['vetstreet_url'],
      vcahospitalsUrl: json['vcahospitals_url'],
      temperament: json['temperament'],
      origin: json['origin'],
      countryCodes: json['country_codes'],
      countryCode: json['country_code'],
      description: json['description'],
      lifeSpan: json['life_span'],
      indoor: json['indoor'],
      lap: json['lap'],
      adaptability: json['adaptability'],
      affectionLevel: json['affection_level'],
      childFriendly: json['child_friendly'],
      catFriendly: json['cat_friendly'],
      dogFriendly: json['dog_friendly'],
      energyLevel: json['energy_level'],
      grooming: json['grooming'],
      healthIssues: json['health_issues'],
      intelligence: json['intelligence'],
      sheddingLevel: json['shedding_level'],
      socialNeeds: json['social_needs'],
      strangerFriendly: json['stranger_friendly'],
      vocalisation: json['vocalisation'],
      bidability: json['bidability'],
      experimental: json['experimental'],
      hairless: json['hairless'],
      natural: json['natural'],
      rare: json['rare'],
      rex: json['rex'],
      suppressedTail: json['suppressed_tail'],
      shortLegs: json['short_legs'],
      wikipediaUrl: json['wikipedia_url'],
      hypoallergenic: json['hypoallergenic'],
      referenceImageId: json['reference_image_id'],
    );
  }
}
