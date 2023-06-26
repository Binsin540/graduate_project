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
      Key? key})
      : super(key: key);
  Color? buttColor;
  Widget child;
  ShapeBorder? shape;
  double height;
  double? width;
  List<String> listOfItem;
  @override
  State<MultiSelectItem> createState() => _MultiSelectItemState();
}

class _MultiSelectItemState extends State<MultiSelectItem> {
  List<String> _selectedItems = [];
  void _showMultiSelect() async {
    final List<String> items = widget.listOfItem;
    final List<String>? results = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return MultiSelect(
            items: items,
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
                            style: TextStyle(color: ColorPattren.lightPink)),
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
  MultiSelect({required this.items, Key? key}) : super(key: key);
  final List<String> items;
  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedItems = [];

  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
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
          children: widget.items
              .map((item) => CheckboxListTile(
                  value: _selectedItems.contains(item),
                  title: Text(item),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (isChecked) => _itemChange(item, isChecked!)))
              .toList(),
        ),
      ),
      actions: [
        TextButton(onPressed: _cancel, child: Text('Cancel')),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
              ColorPattren.lightPink,
            )),
            onPressed: _submit,
            child: Text('Submit'))
      ],
    );
  }
}
