class Plan {
  int id;
  List<PlanFoods> foods;

  Plan();

  Map<String, dynamic> toJson() => <String, dynamic>{
        "foods": foods != null ? foods.map((f) => f.toJson()).toList() : null,
      };

  Plan.fromJson(Map<String, dynamic> map, int id) {
    id = id;
    foods = map["foods"] != null
        ? map["foods"].map((f) => PlanFoods.fromJson(f))
        : null;
  }
}

class PlanFoods {
  int foodId, quantity;
  String unit;

  Map<String, dynamic> toJson() => <String, dynamic>{
        "food_id": foodId,
        "qty": quantity,
        "unit": unit,
      };

  PlanFoods.fromJson(Map<String, dynamic> map) {
    foodId = map["food_id"];
    quantity = map["qty"];
    unit = map["unit"];
  }
}
