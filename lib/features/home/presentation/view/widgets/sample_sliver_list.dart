import 'package:flutter/material.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/sample_sliver_list_body.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class SampleSliverList extends StatefulWidget {
  const SampleSliverList({super.key});

  @override
  State<SampleSliverList> createState() => _SampleSliverListState();
}

class _SampleSliverListState extends State<SampleSliverList> {
  @override
  Widget build(BuildContext context) {
  final cont=S.of(context);
  List<String> sample = [cont.Sample1, cont.Sample2, cont.Sample3];
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
