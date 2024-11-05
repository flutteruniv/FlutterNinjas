import 'package:flutter/material.dart';
import 'package:flutterninjas/presentation/lp_header_appbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../lp_footer_widget.dart';
import 'lp_2024_model.dart';
import 'lp_organizers_widget.dart';
import 'lp_outline_widget.dart';
import 'lp_qa_widget.dart';
import 'lp_schedule_widget.dart';
import 'lp_speakers_widget.dart';
import 'lp_sponsors_widget.dart';
import 'lp_tickets_widget.dart';
import 'lp_top_widget.dart';
import 'lp_venue_widget.dart';

class LP2024Page extends StatelessWidget {
  const LP2024Page({super.key});
  static const String route = '/2024';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LP2024Model>(
      create: (_) => LP2024Model(),
      builder: (context, child) {
        return ResponsiveBuilder(builder: (context, sizingInformation) {
          final model = context.read<LP2024Model>();
          model.setSizingInformation(sizingInformation);
          return Scaffold(
            appBar: const HeaderAppBar(),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Top2024Widget(),
                    const Outline2024Widget(),
                    const Tickets2024Widget(),
                    const Schedule2024Widget(),
                    const Speakers2024Widget(),
                    const Sponsors2024Widget(),
                    const Venue2024Widget(),
                    const QA2024Widget(),
                    const Organizers2024Widget(),
                    FooterWidget(isMobile: model.isMobile),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
