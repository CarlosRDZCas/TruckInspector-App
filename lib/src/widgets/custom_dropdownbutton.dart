import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final double radius;
  final String hint;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  const CustomDropDownButton({
    Key? key,
    required this.radius,
    required this.hint,
    this.items,
    this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: DropdownButton(
            value: value,
            borderRadius: BorderRadius.circular(8),
            hint: Text(hint),
            isExpanded: true,
            underline: Container(),
            items: items,
            onChanged: onChanged),
      ),
    );
  }
}
