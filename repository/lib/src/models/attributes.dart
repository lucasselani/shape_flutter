import 'package:repository/src/models/amino_acids.dart';
import 'package:repository/src/models/energy.dart';
import 'package:repository/src/models/fatty_acids.dart';
import 'package:repository/src/models/value.dart';

class Attributes {
  Value humidity;
  Value protein;
  Value lipid;
  Value cholesterol;
  Value carbohydrate;
  Value fiber;
  Value ashes;
  Value calcium;
  Value magnesium;
  Value phosphorus;
  Value iron;
  Value sodium;
  Value potassium;
  Value copper;
  Value zinc;
  Value retinol;
  Value thiamine;
  Value riboflavin;
  Value pyridoxine;
  Value niacin;
  Value manganese;
  Energy energy;
  FattyAcids fattyAcids;
  AminoAcids aminoAcids;

  Attributes(
      {this.humidity,
      this.protein,
      this.lipid,
      this.cholesterol,
      this.carbohydrate,
      this.fiber,
      this.ashes,
      this.calcium,
      this.magnesium,
      this.phosphorus,
      this.iron,
      this.sodium,
      this.potassium,
      this.copper,
      this.zinc,
      this.retinol,
      this.thiamine,
      this.riboflavin,
      this.pyridoxine,
      this.niacin,
      this.energy,
      this.fattyAcids,
      this.aminoAcids,
      this.manganese});

  Attributes.fromJson(Map<String, dynamic> json) {
    humidity =
        json['humidity'] != null ? Value.fromJson(json['humidity']) : null;
    protein = json['protein'] != null ? Value.fromJson(json['protein']) : null;
    lipid = json['lipid'] != null ? Value.fromJson(json['lipid']) : null;
    cholesterol = json['cholesterol'] != null
        ? Value.fromJson(json['cholesterol'])
        : null;
    carbohydrate = json['carbohydrate'] != null
        ? Value.fromJson(json['carbohydrate'])
        : null;
    fiber = json['fiber'] != null ? Value.fromJson(json['fiber']) : null;
    ashes = json['ashes'] != null ? Value.fromJson(json['ashes']) : null;
    calcium = json['calcium'] != null ? Value.fromJson(json['calcium']) : null;
    magnesium =
        json['magnesium'] != null ? Value.fromJson(json['magnesium']) : null;
    phosphorus =
        json['phosphorus'] != null ? Value.fromJson(json['phosphorus']) : null;
    iron = json['iron'] != null ? Value.fromJson(json['iron']) : null;
    sodium = json['sodium'] != null ? Value.fromJson(json['sodium']) : null;
    potassium =
        json['potassium'] != null ? Value.fromJson(json['potassium']) : null;
    copper = json['copper'] != null ? Value.fromJson(json['copper']) : null;
    zinc = json['zinc'] != null ? Value.fromJson(json['zinc']) : null;
    retinol = json['retinol'] != null ? Value.fromJson(json['retinol']) : null;
    thiamine =
        json['thiamine'] != null ? Value.fromJson(json['thiamine']) : null;
    riboflavin =
        json['riboflavin'] != null ? Value.fromJson(json['riboflavin']) : null;
    pyridoxine =
        json['pyridoxine'] != null ? Value.fromJson(json['pyridoxine']) : null;
    niacin = json['niacin'] != null ? Value.fromJson(json['niacin']) : null;
    energy = json['energy'] != null ? Energy.fromJson(json['energy']) : null;
    fattyAcids = json['fatty_acids'] != null
        ? FattyAcids.fromJson(json['fatty_acids'])
        : null;
    aminoAcids = json['amino_acids'] != null
        ? AminoAcids.fromJson(json['amino_acids'])
        : null;
    manganese =
        json['manganese'] != null ? Value.fromJson(json['manganese']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.humidity != null) {
      data['humidity'] = this.humidity.toJson();
    }
    if (this.protein != null) {
      data['protein'] = this.protein.toJson();
    }
    if (this.lipid != null) {
      data['lipid'] = this.lipid.toJson();
    }
    if (this.cholesterol != null) {
      data['cholesterol'] = this.cholesterol.toJson();
    }
    if (this.carbohydrate != null) {
      data['carbohydrate'] = this.carbohydrate.toJson();
    }
    if (this.fiber != null) {
      data['fiber'] = this.fiber.toJson();
    }
    if (this.ashes != null) {
      data['ashes'] = this.ashes.toJson();
    }
    if (this.calcium != null) {
      data['calcium'] = this.calcium.toJson();
    }
    if (this.magnesium != null) {
      data['magnesium'] = this.magnesium.toJson();
    }
    if (this.phosphorus != null) {
      data['phosphorus'] = this.phosphorus.toJson();
    }
    if (this.iron != null) {
      data['iron'] = this.iron.toJson();
    }
    if (this.sodium != null) {
      data['sodium'] = this.sodium.toJson();
    }
    if (this.potassium != null) {
      data['potassium'] = this.potassium.toJson();
    }
    if (this.copper != null) {
      data['copper'] = this.copper.toJson();
    }
    if (this.zinc != null) {
      data['zinc'] = this.zinc.toJson();
    }
    if (this.retinol != null) {
      data['retinol'] = this.retinol.toJson();
    }
    if (this.thiamine != null) {
      data['thiamine'] = this.thiamine.toJson();
    }
    if (this.riboflavin != null) {
      data['riboflavin'] = this.riboflavin.toJson();
    }
    if (this.pyridoxine != null) {
      data['pyridoxine'] = this.pyridoxine.toJson();
    }
    if (this.niacin != null) {
      data['niacin'] = this.niacin.toJson();
    }
    if (this.energy != null) {
      data['energy'] = this.energy.toJson();
    }
    if (this.fattyAcids != null) {
      data['fatty_acids'] = this.fattyAcids.toJson();
    }
    if (this.aminoAcids != null) {
      data['amino_acids'] = this.aminoAcids.toJson();
    }
    if (this.manganese != null) {
      data['manganese'] = this.manganese.toJson();
    }
    return data;
  }
}
