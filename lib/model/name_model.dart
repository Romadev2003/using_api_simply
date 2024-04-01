class NameModel {
  String title;
  String fist;
  String last;

  NameModel(this.title, this.fist, this.last);

  factory NameModel.fromMap(Map<String, dynamic> json) {
    return NameModel(
      json['title'],
      json['first'],
      json['last'],
    );
  }
}
