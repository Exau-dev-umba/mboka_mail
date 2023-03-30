import 'dart:convert';

List<MailModele> mailModeleFromJson(String str) => List<MailModele>.from(json.decode(str).map((x) => MailModele.fromJson(x)));

String mailModeleToJson(List<MailModele> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MailModele {
  MailModele({
    this.id,
    this.prenom,
    this.nom,
    this.email,
    this.mail,
    this.image,
  });

  int? id;
  String? prenom;
  String? nom;
  String? email;
  String? mail;
  String? image;

  factory MailModele.fromJson(Map json) => MailModele(
    id: json["id"],
    prenom: json["prenom"],
    nom: json["nom"],
    email: json["email"],
    mail: json["mail"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "prenom": prenom,
    "nom": nom,
    "email": email,
    "mail": mail,
    "image": image,
  };
}