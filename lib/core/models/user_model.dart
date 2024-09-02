import 'package:pet_track/core/models/pet_model.dart';

class User {
  User({
    required this.email,
    required this.name,
    required this.petsList,
  });

  final String email;
  final String name;
  final List<Pet>? petsList;

  factory User.fromLogin(String email, String name, List<Pet>? petsList) {
    return User(email: email, name: name, petsList: petsList ?? []);
  }
}
