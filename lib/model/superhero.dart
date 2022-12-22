import 'dart:convert';

class Superhero {
  String? id;
  String? name;
  Map<String, String>? powerstats;
  Map<String, String>? biography;
  Map<String, String>? appearance;
  Map<String, String>? work;
  Map<String, String>? connections;
  String? imageURL;

  Superhero(
      {this.id,
      this.name,
      this.powerstats,
      this.biography,
      this.appearance,
      this.work,
      this.connections,
      this.imageURL}) {
    powerstats = <String, String>{};
  }

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
