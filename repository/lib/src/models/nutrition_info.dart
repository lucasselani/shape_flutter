import 'package:flutter/foundation.dart';
import 'package:repository/src/extension/json_map.dart';
import 'package:repository/src/models/attributes.dart';
import 'package:repository/src/models/energy.dart';
import 'package:repository/src/models/value.dart';

class NutritionInfo {
  Value base;
  Energy energy;
  Value carbohydrate;
  Value protein;
  Value lipid;
  Map<String, Value> aminoAcids = Map<String, Value>();
  Map<String, Value> fattyAcids = Map<String, Value>();
  Map<String, Value> micronutrients = Map<String, Value>();

  NutritionInfo(
      {@required this.base,
      @required this.energy,
      @required this.carbohydrate,
      @required this.protein,
      @required this.lipid});

  void createNutritionMaps(Attributes attributes) {
    const amino = 'amino_acids';
    const ignoreKeys = [
      'fatty_acids',
      'energy',
      'humidity',
      'protein',
      'lipid',
      'carbohydrate',
      'cholesterol'
    ];

    var attributesMap = attributes.toJson();
    _addToMapIfNotUnvailable(this.micronutrients, attributesMap,
        keys: attributesMap.keys.where((key) => !ignoreKeys.contains(key)));

    var aminoAcidsMap = attributesMap.getOrCreateValue(amino);
    _addToMapIfNotUnvailable(this.aminoAcids, aminoAcidsMap);

    _craeteLipidsMap(attributesMap);
  }

  void _craeteLipidsMap(Map<String, dynamic> attributesMap) {
    const saturated = 'saturated',
        monounsaturated = 'monounsaturated',
        polyunsaturated = 'polyunsaturated',
        trans1 = '18:1t',
        trans2 = '18:2t',
        fatty = 'fatty_acids',
        cholesterol = 'cholesterol';

    var fattyAcidsMap = attributesMap.getOrCreateValue(fatty);
    _addToMapIfNotUnvailable(this.fattyAcids, fattyAcidsMap,
        keys: fattyAcidsMap.keys.where((key) =>
            [saturated, monounsaturated, polyunsaturated].contains(key)));

    var trans1Value = fattyAcidsMap.containsKey(trans1)
        ? Value.fromJson(fattyAcidsMap[trans1])
        : null;
    var trans2Value = fattyAcidsMap.containsKey(trans2)
        ? Value.fromJson(fattyAcidsMap[trans2])
        : null;
    if (trans1Value != null || trans2Value != null) {
      String unit = trans1Value != null
          ? trans1Value.unit
          : trans2Value != null ? trans2Value.unit : 'g';
      num qty = (trans1Value != null ? trans1Value.qty : 0) +
          (trans2Value != null ? trans2Value.qty : 0);
      if (qty != 0) this.fattyAcids['trans'] = Value(unit: unit, qty: qty);
    }

    var cholesterolValue = attributesMap.containsKey(cholesterol)
        ? Value.fromJson(attributesMap[cholesterol])
        : null;
    if (cholesterolValue != null && cholesterolValue.qty != 0) {
      this.fattyAcids[cholesterol] = cholesterolValue;
    }
  }

  void _addToMapIfNotUnvailable(
      Map<String, Value> newMap, Map<String, dynamic> map,
      {Iterable<String> keys}) {
    var usedKeys = keys != null ? keys : map.keys;
    usedKeys.forEach((key) {
      if (map.containsKey(key)) {
        var value = Value.fromJson(map[key]);
        if (value?.qty != null && value.qty != 0) {
          newMap[key] = value;
        }
      }
    });
  }
}
