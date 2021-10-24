class Profile{
  String image;
  String info;
  String name;
  String description;

  Profile(this.image, this.info, this.name, this.description);

  static List<Profile> samples = [
    Profile(
        'assets/Al-Khwarizmi.jpeg',
        'Lifetime\n78 years\n Country\nBaghdad', 'Al-Khwarizmi', 'Father of Algebra'),
    Profile(
        'assets/henryFord.jpg',
        'Lifetime\n84 years\n Country\nUSA', 'Henry Ford', 'American Industrialist'),
    Profile(
        'assets/Al-Khwarizmi.jpeg',
        'Lifetime\n78 years\n Country\nBaghdad', 'Al-Khwarizmi', 'Father of Algebra'),
    Profile(
        'assets/henryFord.jpg',
        'Lifetime\n84 years\n Country\nUSA', 'Henry Ford', 'American Industrialist'),
    Profile(
        'assets/Al-Khwarizmi.jpeg',
        'Lifetime\n78 years\n Country\nBaghdad', 'Al-Khwarizmi', 'Father of Algebra'),
    Profile(
        'assets/henryFord.jpg',
        'Lifetime\n84 years\n Country\nUSA', 'Henry Ford', 'American Industrialist'),
    Profile(
        'assets/Al-Khwarizmi.jpeg',
        'Lifetime\n78 years\n Country\nBaghdad', 'Al-Khwarizmi', 'Father of Algebra'),
    Profile(
        'assets/henryFord.jpg',
        'Lifetime\n84 years\n Country\nUSA', 'Henry Ford', 'American Industrialist'),
  ];
}