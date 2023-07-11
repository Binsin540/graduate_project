import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../ui/style/app_color.dart';

class MultiSelectItem extends StatefulWidget {
  MultiSelectItem(
      {required this.listOfItem,
      this.width,
      this.height = 70,
      this.shape,
      required this.child,
      this.buttColor,
        required this.onSelectedItemsChangedMain,
      Key? key})
      : super(key: key);
  Color? buttColor;
  Widget child;
  ShapeBorder? shape;
  double height;
  double? width;
  Map<String,bool> listOfItem;
  final Function(Map<String,bool>) onSelectedItemsChangedMain;
  @override
  State<MultiSelectItem> createState() => _MultiSelectItemState();
}

class _MultiSelectItemState extends State<MultiSelectItem> {
  List<String> _selectedItems = [];
  void _showMultiSelect() async {
    final Map<String,bool> items = widget.listOfItem;
    final List<String>? results = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return MultiSelect(
            items: items,
            onSelectedItemsChanged: (value){
              widget.onSelectedItemsChangedMain(value);
            },
          );
        });
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialButton(
              onPressed: _showMultiSelect,
              color: widget.buttColor,
              height: widget.height,
              shape: widget.shape,
              minWidth: widget.width,
              child: widget.child,
            ),
            const Divider(
              height: 30,
            ),
            Wrap(
              children: _selectedItems
                  .map((e) => Container(
                        child: Text(e,
                            style: const TextStyle(color: ColorPattren.lightPink)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorPattren.darkBlue),
                        padding: const EdgeInsets.all(20),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class MultiSelect extends StatefulWidget {
  MultiSelect({required this.items, required this.onSelectedItemsChanged, Key? key}) : super(key: key);
   Map<String,bool> items;
  Function(Map<String,bool>) onSelectedItemsChanged;
  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedItems = [];

  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
        widget.items[itemValue] = isSelected;
        print(widget.items);
    });
    widget.onSelectedItemsChanged(widget.items);
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    print(_selectedItems);
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text('اختار المواقف:')),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items.keys
              .map((item) => CheckboxListTile(
              value: widget.items[item]!,
              title: Text(item),

              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (isChecked) => _itemChange(item, isChecked!)))
              .toList(),
        ),
      ),
      actions: [
        TextButton(onPressed: _cancel, child: const Text('Cancel')),
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  ColorPattren.lightPink,
                )),
            onPressed: _submit,
            child: const Text('Submit'))
      ],
    );
  }
}
