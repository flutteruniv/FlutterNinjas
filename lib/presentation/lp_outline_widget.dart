import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

class OutlineWidget extends StatelessWidget {
  const OutlineWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 32,
            )
          : const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 64,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            '''🥷Date
May 29 (Thu) - 30 (Fri), 2025

🥷Location
Tokyo, Japan
docomo R&D OPEN LAB ODAIBA
            ''',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
