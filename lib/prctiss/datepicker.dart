import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum SingingCharacter { abc, bcd }

class ShowBottomModelScreen extends StatefulWidget {
  const ShowBottomModelScreen({super.key});

  @override
  State<ShowBottomModelScreen> createState() => _ShowBottomModelScreenState();
}

class _ShowBottomModelScreenState extends State<ShowBottomModelScreen> {
  double isChange = 0.0;
  bool isChecked = false;
  SingingCharacter? _character = SingingCharacter.abc;
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 5),
                    content: const Text("Show SnakBar"),
                    action: SnackBarAction(
                        label: 'Yes',
                        onPressed: () {
                          // Navigator.pop(context);
                        }),
                  ),
                );
              },
              child: const Text("ShowBottomModel"),
            ),
          ),
          Slider(
              value: isChange,
              divisions: 100,
              max: 100,
              // min: 50,
              label: isChange.round().toString(),
              onChanged: (double change) {
                setState(() {
                  isChange = change;
                });
              }),
          Text(isChange.toString()),
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: const Text('Lafayette'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.abc,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Thomas Jefferson'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.bcd,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.width / 3,
              child: Center(
                  child: TextField(
                    controller: dateInput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Enter Date" //label text of field
                    ),
                    readOnly: true,
                    //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        log(pickedDate
                            .toString()); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          dateInput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {}
                    },
                  ))),
        ],
      ),
    );
  }

  void showBottom(BuildContext context) => showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}