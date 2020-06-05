import 'package:flutter/material.dart';
import 'package:shape/resources/colors.dart';
import 'package:shape/resources/strings.dart';
import 'package:shape/resources/styles.dart';

typedef void OnSearch(String text);

class SearchBar extends StatefulWidget {
  final OnSearch onSearch;

  SearchBar({@required this.onSearch});

  @override
  State<StatefulWidget> createState() => _SearchBarState(onSearch);
}

class _SearchBarState extends State<SearchBar> {
  final OnSearch onSearch;

  _SearchBarState(this.onSearch);

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      hintText: Strings.searchBar,
      icon: Icon(Icons.search, color: AppColors.black45),
      fillColor: AppColors.white,
      hintStyle: Styles.label(biggerFont: true),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              style: Styles.label(biggerFont: true),
              decoration: _buildInputDecoration(),
              onChanged: (String text) => onSearch(text),
            ),
          ),
        ),
      );
}
