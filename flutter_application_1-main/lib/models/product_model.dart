class ProductModel {
  String? id;
  String? name;
  bool? purchased;
  int? count;

  ProductModel({this.name, this.purchased});

  ProductModel.fromJson(this.id, Map<String, dynamic> json) {
    name = json['name'];
    purchased = json['purchased'];
    count=json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['purchased'] = purchased;
    data['count']=count;
    return data;
  }
}