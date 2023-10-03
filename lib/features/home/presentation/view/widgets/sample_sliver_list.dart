import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_sliver_list_body.dart';

class SampleSliverList extends StatefulWidget {
  const SampleSliverList({super.key});

  @override
  State<SampleSliverList> createState() => _SampleSliverListState();
}

class _SampleSliverListState extends State<SampleSliverList> {
  List<String> sample = ['Sample Text 1', 'Sample Text 2', 'Sample Text 3'];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return SampleSliverListBody(
            sample: sample[index],
            sampleLength: sample.length,
            index: index,
          );
        },
        childCount: sample.length,
      ),
    );
  }
}
