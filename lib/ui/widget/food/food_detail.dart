import 'package:flutter/material.dart';
import 'package:repository/repository.dart';
import 'package:shape/extension/map.dart';
import 'package:shape/resources/colors.dart';
import 'package:shape/resources/styles.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  final bool isPicking;

  FoodDetail({@required this.food, @required this.isPicking});

  @override
  State<StatefulWidget> createState() => _FoodDetailState(food, isPicking);
}

class _FoodDetailState extends State<FoodDetail> {
  Food food;
  bool isPicking;

  _FoodDetailState(this.food, this.isPicking);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          isPicking ? _FoodQuantityEditText() : _FoodQuantityText(food),
          Divider(),
          _NutritionInfo(food),
        ],
      );
}

class _FoodQuantityEditText extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text('DO');
}

class _FoodQuantityText extends StatelessWidget {
  final Food food;

  _FoodQuantityText(this.food);

  @override
  Widget build(BuildContext context) =>
      Text('Porção: ${food.baseQty}${food.baseUnit}', style: Styles.title());
}

class _NutritionInfo extends StatelessWidget {
  final Food food;

  _NutritionInfo(this.food);

  Widget _buildRow(String attribute, String value, String unit,
          {subItem = false}) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 1.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: AppColors.black12,
          width: 0.5,
        ))),
        child: Row(
          children: <Widget>[
            Text(attribute, style: subItem ? Styles.subItem() : Styles.label()),
            Spacer(),
            Text(value + unit, style: Styles.label()),
          ],
        ),
      );

  Widget _buildList(Map<String, Value> map, {subItem = false}) => Padding(
        padding: EdgeInsets.only(left: subItem ? 16.0 : 0),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: map.keys.length,
            itemBuilder: (_, index) {
              var value = map.valueAt(index);
              var key = map.keyAt(index);
              return _buildRow(key, value.qty.toStringAsFixed(2), value.unit,
                  subItem: subItem);
            }),
      );

  @override
  Widget build(BuildContext context) {
    var info = food.getNutritionInfo();
    return Expanded(
      child: ListView(
        children: <Widget>[
          _buildRow('Calorias', info.energy.kcal.toStringAsFixed(2), 'kcal'),
          SizedBox(height: 4.0),
          _buildRow('Carboidratros', info.carbohydrate.qty.toStringAsFixed(2),
              info.carbohydrate.unit),
          SizedBox(height: 4.0),
          _buildRow('Proteínas', info.protein.qty.toStringAsFixed(2),
              info.protein.unit),
          if (info.aminoAcids.isNotEmpty)
            _buildList(info.aminoAcids, subItem: true),
          SizedBox(height: 4.0),
          _buildRow(
              'Gorduras', info.lipid.qty.toStringAsFixed(2), info.lipid.unit),
          if (info.fattyAcids.isNotEmpty)
            _buildList(info.fattyAcids, subItem: true),
          SizedBox(height: 4.0),
          _buildList(info.micronutrients),
        ],
      ),
    );
  }
}
