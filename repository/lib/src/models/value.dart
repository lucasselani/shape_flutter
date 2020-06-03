import 'package:repository/src/utils/number_parser.dart';

class Value {
  num qty;
  String unit;

  Value({this.qty, this.unit});

  Value.fromJson(Map<String, dynamic> json) {
    qty = NumberParser.tryParse(json['qty']);
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    if (this.qty == null || this.unit == null) return null;
    var data = Map<String, dynamic>();
    data['qty'] = this.qty;
    data['unit'] = this.unit;
    return data;
  }
}
