import 'package:repository/src/models/attributes.dart';
import 'package:repository/src/models/nutrition_info.dart';
import 'package:repository/src/models/value.dart';

class Food {
  num id;
  String description;
  num baseQty;
  String baseUnit;
  num categoryId;
  Attributes attributes;

  Food(
      {this.id,
      this.description,
      this.baseQty,
      this.baseUnit,
      this.categoryId,
      this.attributes});

  Food.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    baseQty = json['base_qty'];
    baseUnit = json['base_unit'];
    categoryId = json['category_id'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['base_qty'] = this.baseQty;
    data['base_unit'] = this.baseUnit;
    data['category_id'] = this.categoryId;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }

  NutritionInfo getNutritionInfo() => NutritionInfo(
        base: Value(qty: baseQty, unit: baseUnit),
        energy: attributes.energy,
        carbohydrate: attributes.carbohydrate,
        protein: attributes.protein,
        lipid: attributes.lipid,
      )..createNutritionMaps(attributes);
}
