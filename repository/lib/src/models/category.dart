class Category {
  int id;
  String category;

  Category({this.id, this.category});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['id'] = id;
    data['category'] = category;
    return data;
  }
}
