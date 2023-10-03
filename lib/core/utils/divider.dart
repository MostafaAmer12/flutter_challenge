import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, this.indent=0.0,this.thickness=1,});
  final double indent;
  final double thickness;
  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: indent,
      thickness: thickness,
    );
  }
}
