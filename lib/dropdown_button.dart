import 'package:flutter/material.dart';

class Dropdownbutton extends StatefulWidget {
  const Dropdownbutton({super.key});

  @override
  State<Dropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Dropdownbutton> {
   String valueChoose = 'Select Category';

  List<String> list1 = [
    'Select Category',
    'Bicycle',
    'Bus Service',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                hint: Text('$valueChoose'),
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                isExpanded: true,
                items: list1.map((String items) {
                  return DropdownMenuItem(
                    alignment: AlignmentDirectional.centerStart,
                    value: items,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        ' $items',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(
                    () {
                      valueChoose = value!;
                    },
                  );
                },
              ),
            ),;
  }
}