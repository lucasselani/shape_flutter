import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repository/repository.dart';
import 'package:shape/extension/map.dart';
import 'package:shape/resources/colors.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/styles.dart';

class FoodDetailDialog {
  static Future<PlanFoods> showDetails(BuildContext context,
          {@required Food food,
          @required bool isPicking,
          num quantity}) async =>
      await showDialog<PlanFoods>(
        context: context,
        barrierDismissible: !isPicking,
        builder: (_) => Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child:
              _FoodDetail(food: food, isPicking: isPicking, quantity: quantity),
        ),
      );
}

class _FoodDetail extends StatefulWidget {
  final Food food;
  final bool isPicking;
  final num quantity;

  _FoodDetail({@required this.food, @required this.isPicking, this.quantity});

  @override
  State<StatefulWidget> createState() =>
      _FoodDetailState(food, isPicking, quantity);
}

class _FoodDetailState extends State<_FoodDetail> {
  Food food;
  bool isPicking;
  num quantity;

  _FoodDetailState(this.food, this.isPicking, num quantity) {
    this.quantity = quantity == null ? food.baseQty : quantity;
  }

  onTextChanged(String text) {
    var newQuantity = text.isEmpty ? food.baseQty : num.tryParse(text);
    if (newQuantity != null) {
      setState(() {
        quantity = newQuantity;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(Strings.nutritionInfoTitle, style: Styles.title()),
            SizedBox(height: 8),
            isPicking
                ? _FoodQuantityEditText(food, onTextChanged)
                : _FoodQuantityText(food),
            Divider(),
            _NutritionInfo(food, quantity),
            _ActionButtons(food, isPicking, quantity),
          ],
        ),
      );
}

class _ActionButtons extends StatelessWidget {
  final Food food;
  final bool isPicking;
  final num quantity;

  _ActionButtons(this.food, this.isPicking, this.quantity);

  PlanFoods _createPlanFood() =>
      PlanFoods(foodId: food.id, unit: food.baseUnit, quantity: quantity);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Divider(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(Strings.close,
                    style: Styles.button(color: AppColors.black)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              if (isPicking)
                FlatButton(
                  child: Text(Strings.add, style: Styles.button()),
                  onPressed: () {
                    Navigator.of(context).pop(_createPlanFood());
                  },
                ),
            ],
          ),
        ],
      );
}

class _FoodQuantityEditText extends StatelessWidget {
  final Food food;
  final Function onTextChanged;

  _FoodQuantityEditText(this.food, this.onTextChanged);

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      hintText: food.baseQty.toString(),
      hintStyle: Styles.subItem(biggerFont: true),
    );
  }

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text("Porção", style: Styles.title()),
          SizedBox(width: 8),
          Expanded(
              child: TextField(
            style: Styles.label(biggerFont: true),
            decoration: _buildInputDecoration(),
            keyboardType: TextInputType.number,
            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
            onChanged: onTextChanged,
            maxLines: 1,
          )),
          SizedBox(width: 8),
          Text(food.baseUnit, style: Styles.title()),
        ],
      );
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
  final num quantity;

  _NutritionInfo(this.food, this.quantity);

  String _calculateValue(num value) =>
      (value * (quantity / food.baseQty)).toStringAsFixed(2);

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
            SizedBox(width: 8.0),
            Expanded(
              child: Text(value + unit,
                  style: Styles.label(),
                  textAlign: TextAlign.end,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis),
            ),
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
              return _buildRow(key, _calculateValue(value.qty), value.unit,
                  subItem: subItem);
            }),
      );

  @override
  Widget build(BuildContext context) {
    var info = food.getNutritionInfo();
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        child: ListView(
          children: <Widget>[
            _buildRow('Calorias', _calculateValue(info.energy.kcal), 'kcal'),
            SizedBox(height: 4.0),
            _buildRow('Carboidratros', _calculateValue(info.carbohydrate.qty),
                info.carbohydrate.unit),
            SizedBox(height: 4.0),
            _buildRow('Proteínas', _calculateValue(info.protein.qty),
                info.protein.unit),
            if (info.aminoAcids.isNotEmpty)
              _buildList(info.aminoAcids, subItem: true),
            SizedBox(height: 4.0),
            _buildRow(
                'Gorduras', _calculateValue(info.lipid.qty), info.lipid.unit),
            if (info.fattyAcids.isNotEmpty)
              _buildList(info.fattyAcids, subItem: true),
            SizedBox(height: 4.0),
            _buildList(info.micronutrients),
          ],
        ),
      ),
    );
  }
}
