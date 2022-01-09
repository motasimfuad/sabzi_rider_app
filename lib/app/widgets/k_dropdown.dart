import 'package:flutter/material.dart';

class KDropdown extends StatefulWidget {
  List items;
  final String labelText;
  final bool isRequired;
  KDropdown({
    Key? key,
    required this.items,
    required this.labelText,
    this.isRequired = false,
  }) : super(key: key);

  @override
  _KDropdownState createState() => _KDropdownState();
}

class _KDropdownState extends State<KDropdown> {
  // final items = [];
  var selectedItem = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.labelText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.grey.shade600,
              ),
            ),
            widget.isRequired
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                  )
                : Container(width: 0),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.only(
            bottom: 15,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: selectedItem,
              isExpanded: true,
              items: const [],
              // widget.items.map(buildMenuItem).toList() ?? [],
              onChanged: (dynamic val) {
                setState(() {
                  selectedItem = val.toString();
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}
