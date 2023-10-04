import 'package:flutter/material.dart';
import 'package:flutter_challenge/core/shared_widgets/standard_divider.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_item.dart';

class SampleListViewBody extends StatelessWidget {
  const SampleListViewBody(
      {super.key,
      required this.sample,
      required this.sampleLength,
      required this.index});
  final String sample;
  final int sampleLength;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SampleItem(
            sample: sample,
            onPressed: () {},
          ),
        ),
        StandardDivider(
          length: sampleLength,
          index: index,
        ),
      ],
    );
  }
}
