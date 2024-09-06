import 'package:pet_track/core/models/pet_model.dart';

class PetTrackUserModel {
  PetTrackUserModel({
    required this.email,
    required this.name,
    required this.petsList,
  });

  final String email;
  final String name;
  List<Pet>? petsList;

  factory PetTrackUserModel.fromLogin(
      String email, String name, List<Pet>? petsList) {
    return PetTrackUserModel(
        email: email, name: name, petsList: petsList ?? []);
  }

  set updatePetList(List<Pet> addedPets) => petsList = addedPets;
}
