import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Schedule',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          Image.asset(
            'resources/images/schedule.png',
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
