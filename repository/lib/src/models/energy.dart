import 'package:repository/src/utils/number_parser.dart';

class Energy {
  num kcal;
  num kj;

  Energy({this.kcal, this.kj});

  Energy.fromJson(Map<String, dynamic> json) {
    kcal = NumberParser.tryParse(json['kcal']);
    kj = NumberParser.tryParse(json['kj']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kcal'] = this.kcal;
    data['kj'] = this.kj;
    return data;
  }
}
