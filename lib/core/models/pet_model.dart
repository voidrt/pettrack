class Pet {
  Pet({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  factory Pet.fromRegistry(String name) {
    return Pet(name: name, id: 12);
  }
}
