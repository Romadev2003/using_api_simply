class PictureModel {
  String large;
  String medium;
  String thumbnail;

  PictureModel(this.large, this.medium, this.thumbnail);

  factory PictureModel.fromMap(Map<String, dynamic> json){
    return PictureModel(
      json['large'],
      json['medium'],
      json['thumbnail'],
    );
  }
}