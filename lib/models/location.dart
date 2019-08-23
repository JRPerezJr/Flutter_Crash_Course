import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'The Blue Palace', 'assets/images/beauty.jpg', [
        LocationFact('Summary',
            'A beautiful place to relax and drink some well crafted coffee.'),
        LocationFact('How do I get there', 'Take the east road to Rohan.'),
      ]),
      Location(
          2, 'The House of the Green Dragon', 'assets/images/beauty2.jpeg', [
        LocationFact('Summary', 'This is an invite only.'),
        LocationFact('How do I get there',
            'Dont worry about it. You dont need to know.'),
      ]),
      Location(3, 'The Pink Cafe', 'assets/images/beauty3.jpeg', [
        LocationFact('Summary', 'A pleasant experience close to home.'),
        LocationFact('How do I get there', 'Follow the path to Winterhold.'),
      ]),
    ];
  }
}
