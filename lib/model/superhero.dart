import 'dart:convert';

class Superhero {
  String id;
  String name;
  Map<String, dynamic> powerstats;
  Map<String, dynamic> biography;
  Map<String, dynamic> appearance;
  Map<String, dynamic> work;
  Map<String, dynamic> connections;
  String imageURL;

  Superhero(
      {required this.id,
      required this.name,
      required this.powerstats,
      required this.biography,
      required this.appearance,
      required this.work,
      required this.connections,
      required this.imageURL});

  static Superhero fromMap(Map<String, dynamic> map) => Superhero(
        id: map['id'],
        name: map['name'],
        powerstats: map['powerstats'],
        biography: map['biography'],
        appearance: map['appearance'],
        work: map['work'],
        connections: map['connections'],
        imageURL: map['image']['url'],
      );

  static Superhero fromJson(String data) =>
      Superhero.fromMap(json.decode(data));

  static Map<String, dynamic> toMap(Superhero superhero) => {
        'id': superhero.id,
        'name': superhero.name,
        'powerstats': superhero.powerstats,
        'biography': superhero.biography,
        'appearance': superhero.appearance,
        'work': superhero.work,
        'connections': superhero.connections,
        'image': <String, dynamic>{"url": superhero.imageURL},
      };

  static String toJson(Superhero superhero) =>
      json.encode(Superhero.toMap(superhero));
}
