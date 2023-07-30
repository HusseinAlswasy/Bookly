import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeSearchTextFeild extends StatelessWidget {
  const CustomeSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
