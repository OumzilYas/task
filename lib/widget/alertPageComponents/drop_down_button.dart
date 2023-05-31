import 'package:flutter/material.dart';
import 'package:task/config/size_config.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample(
      {super.key,
      required this.bookMark,
      required this.bookMarkIcon,
      required this.onTapF,
      required this.data});

  final bool bookMark;
  final bool bookMarkIcon;
  final Function onTapF;
  final List<String> data;

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.data.first;
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Stack(
      children: <Widget>[
        Container(
          width: w * .9,
          height: h * .05,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(
            child: SizedBox(
              width: w * .9,
              height: h * .05,
              child: DropdownButton<String>(
                value: dropdownValue,
                padding: const EdgeInsets.only(left: 10.0),
                icon: const Icon(
                  Icons.arrow_downward,
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 0,
                ),
                iconSize: 0,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items:
                    widget.data.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        (widget.bookMarkIcon)
            ? Positioned(
                top: 10,
                right: 40,
                child: GestureDetector(
                  child: SizedBox(
                    width: w * .08,
                    height: h * .03,
                    child: Icon(
                      Icons.bookmark,
                      color: widget.bookMark ? Colors.grey : Colors.yellow,
                    ),
                  ),
                  onTap: () {
                    widget.onTapF();
                  },
                ),
              )
            : const SizedBox(),
        Positioned(
          top: 10,
          right: 5,
          child: InkWell(
            child: SizedBox(
              width: w * .08,
              height: h * .008,
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
