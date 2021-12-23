class User {
  final String name;
  final DateTime? birthday;

  User({required this.name, required this.birthday});
  // ? abtraction
  // this is kind of abstraction because user deosn't want to know
  // how we get got the age but they want to know what our current age
  int get age {
    return DateTime.now().year - birthday!.year;
  }
}
