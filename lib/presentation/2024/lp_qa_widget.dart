import 'package:flutter/material.dart';
import 'package:flutterninjas/domain/2024/qa_type.dart';
import 'package:provider/provider.dart';

import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class QA2024Widget extends StatelessWidget {
  const QA2024Widget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;
    return LPBase2024Container(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Q & A',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(
            height: 48,
          ),
          Column(
            children: QAType.values.map((type) => QAUnitWidget(type)).toList(),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Do you have any other questions? Please contact us from the chat icon on the bottom right.',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

class QAUnitWidget extends StatelessWidget {
  const QAUnitWidget(this.type, {super.key});

  final QAType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            type.question,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 4),
          SelectableText(
            type.answer,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}
