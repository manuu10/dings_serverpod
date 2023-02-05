import 'package:flutter/material.dart';

import 'angled_container.dart';

class AngledTextField extends StatefulWidget {
  const AngledTextField({Key? key, this.controller, this.hintText})
      : super(key: key);
  final TextEditingController? controller;
  final String? hintText;

  @override
  State<AngledTextField> createState() => _AngledTextFieldState();
}

class _AngledTextFieldState extends State<AngledTextField> {
  late FocusNode node;

  @override
  void initState() {
    node = FocusNode();
    node.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AngledContainer(
      backgroundColor: Colors.grey.shade900,
      borderColor: node.hasFocus ? Theme.of(context).primaryColor : Colors.grey,
      borderBottom: true,
      borderWidth: 3,
      child: TextField(
        controller: widget.controller,
        focusNode: node,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
