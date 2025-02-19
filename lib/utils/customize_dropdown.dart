import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomizeDropdownWidget extends StatefulWidget {
  CustomizeDropdownWidget(
      {super.key,
      required this.items,
      required this.onChange,
      this.searchController,
      this.hintText,this.hint,this.value});
  List<String>? items;
  void Function(String?)? onChange;
  TextEditingController? searchController;
  String? hintText;
  Widget? hint;
  String? value;
  @override
  State<CustomizeDropdownWidget> createState() =>
      _CustomizeDropdownWidgetState();
}

class _CustomizeDropdownWidgetState extends State<CustomizeDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * (5.2 / 100),
      width: Get.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey, width: 2)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: widget.hint,



          items: widget.items
              ?.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          // value: selectedValue,
          onChanged: widget.onChange,
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 200,
          ),
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 200,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
          dropdownSearchData: DropdownSearchData(
            searchController: widget.searchController,
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              height: 50,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                expands: true,
                maxLines: null,
                controller: widget.searchController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return item.value.toString().contains(searchValue);
            },
          ),
          //This to clear the search value when you close the menu
          onMenuStateChange: (isOpen) {
            if (!isOpen) {
              widget.searchController?.clear();
            }
          },
        ),
      ),
    );
  }
}

