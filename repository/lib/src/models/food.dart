class Food {
  int id;
  String description;
  String category;
  num humidityPercents;
  num energyKcal;
  num energyKj;
  num proteinG;
  num lipidiusG;
  num cholesterolMg;
  num carbohydrateG;
  num fiberG;
  num ashesG;
  num calciumMg;
  num magnesiumMg;
  num manganeseMg;
  num phosphorusMg;
  num ironMg;
  num sodiumMg;
  num potassiumMg;
  num copperMg;
  num zincMg;
  num retinolMcg;
  num reMcg;
  num raeMcg;
  num tiaminaMg;
  num riboflavinMg;
  num pyridoxineMg;
  num niacinMg;
  num vitaminCMg;

  Food(
      {this.id,
      this.description,
      this.category,
      this.humidityPercents,
      this.energyKcal,
      this.energyKj,
      this.proteinG,
      this.lipidiusG,
      this.cholesterolMg,
      this.carbohydrateG,
      this.fiberG,
      this.ashesG,
      this.calciumMg,
      this.magnesiumMg,
      this.manganeseMg,
      this.phosphorusMg,
      this.ironMg,
      this.sodiumMg,
      this.potassiumMg,
      this.copperMg,
      this.zincMg,
      this.retinolMcg,
      this.reMcg,
      this.raeMcg,
      this.tiaminaMg,
      this.riboflavinMg,
      this.pyridoxineMg,
      this.niacinMg,
      this.vitaminCMg});

  Food.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    category = json['category'];
    humidityPercents = _tryParse(json['humidity_percents']);
    energyKcal = _tryParse(json['energy_kcal']);
    energyKj = _tryParse(json['energy_kj']);
    proteinG = _tryParse(json['protein_g']);
    lipidiusG = _tryParse(json['lipidius_g']);
    cholesterolMg = _tryParse(json['cholesterol_mg']);
    carbohydrateG = _tryParse(json['carbohydrate_g']);
    fiberG = _tryParse(json['fiber_g']);
    ashesG = _tryParse(json['ashes_g']);
    calciumMg = _tryParse(json['calcium_mg']);
    magnesiumMg = _tryParse(json['magnesium_mg']);
    manganeseMg = _tryParse(json['manganese_mg']);
    phosphorusMg = _tryParse(json['phosphorus_mg']);
    ironMg = _tryParse(json['iron_mg']);
    sodiumMg = _tryParse(json['sodium_mg']);
    potassiumMg = _tryParse(json['potassium_mg']);
    copperMg = _tryParse(json['copper_mg']);
    zincMg = _tryParse(json['zinc_mg']);
    retinolMcg = _tryParse(json['retinol_mcg']);
    reMcg = _tryParse(json['re_mcg']);
    raeMcg = _tryParse(json['rae_mcg']);
    tiaminaMg = _tryParse(json['tiamina_mg']);
    riboflavinMg = _tryParse(json['riboflavin_mg']);
    pyridoxineMg = _tryParse(json['pyridoxine_mg']);
    niacinMg = _tryParse(json['niacin_mg']);
    vitaminCMg = _tryParse(json['vitaminC_mg']);
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['category'] = category;
    data['humidity_percents'] = humidityPercents;
    data['energy_kcal'] = energyKcal;
    data['energy_kj'] = energyKj;
    data['protein_g'] = proteinG;
    data['lipidius_g'] = lipidiusG;
    data['cholesterol_mg'] = cholesterolMg;
    data['carbohydrate_g'] = carbohydrateG;
    data['fiber_g'] = fiberG;
    data['ashes_g'] = ashesG;
    data['calcium_mg'] = calciumMg;
    data['magnesium_mg'] = magnesiumMg;
    data['manganese_mg'] = manganeseMg;
    data['phosphorus_mg'] = phosphorusMg;
    data['iron_mg'] = ironMg;
    data['sodium_mg'] = sodiumMg;
    data['potassium_mg'] = potassiumMg;
    data['copper_mg'] = copperMg;
    data['zinc_mg'] = zincMg;
    data['retinol_mcg'] = retinolMcg;
    data['re_mcg'] = reMcg;
    data['rae_mcg'] = raeMcg;
    data['tiamina_mg'] = tiaminaMg;
    data['riboflavin_mg'] = riboflavinMg;
    data['pyridoxine_mg'] = pyridoxineMg;
    data['niacin_mg'] = niacinMg;
    data['vitaminC_mg'] = vitaminCMg;
    return data;
  }

  num _tryParse(dynamic value) {
    if (value is String) {
      try {
        return num.parse(value) ?? 0;
      } on FormatException catch (_) {
        return 0;
      }
    } else {
      return value as num;
    }
  }
}
