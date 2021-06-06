import 'dart:core';

class Profile {
  String imageUrl;
  String name;
  String description;

  Profile({
    this.imageUrl,
    this.name,
    this.description,
  });
}

List<Profile> profiles = [
  Profile(
    imageUrl: 'images/dad.png',
    name: 'Ram Kumar Rai',
    description: 'We Love Him So Much',
  ),
  Profile(
      imageUrl: 'images/mom.jpg',
      name: 'Maula Maya Rai',
      description: 'D.O.B: 2030/07/05'),
  Profile(
      imageUrl: 'images/me.jpg',
      name: 'Hem Kumar Rai',
      description: 'D.O.B:2055/12/16'),
  Profile(
    imageUrl: 'images/jimi.jpg',
    name: 'Jimini Don',
    description: '2057/12/26',
  ),
  Profile(
    imageUrl: 'images/jaya.jpg',
    name: 'Jaya Kala ',
    description: '2059/04/15',
  )
];
