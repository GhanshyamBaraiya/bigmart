import 'package:flutter/material.dart';

List<String> name = ['raj', 'ram', 'shyam'];

class DropDownBotten extends StatefulWidget {
  const DropDownBotten({super.key});

  @override
  State<DropDownBotten> createState() => _DropDownBottenState();
}

class _DropDownBottenState extends State<DropDownBotten> {
  String namelist = name.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownMenu<String>(
          initialSelection: name.first,
         dropdownMenuEntries:
           name.map<DropdownMenuEntry<String>>((String value)
    {
      return DropdownMenuEntry<String>(value: value, label: value);

      }).toList(),


        ),
      ),
    );
  }
}
