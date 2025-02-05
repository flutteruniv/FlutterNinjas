import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_2024_widget.dart';
import 'lp_footer_widget.dart';
import 'lp_header_appbar.dart';
import 'lp_model.dart';
import 'lp_outline_widget.dart';
import 'lp_speakers_widget.dart';
import 'lp_sponsors_widget.dart';
import 'lp_tickets_widget.dart';
import 'lp_top_widget.dart';
import 'lp_venue_widget.dart';

class LPPage extends StatelessWidget {
  const LPPage({super.key});
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LPModel>(
      create: (_) => LPModel(),
      builder: (context, child) {
        return ResponsiveBuilder(builder: (context, sizingInformation) {
          final model = context.read<LPModel>();
          model.setSizingInformation(sizingInformation);
          return Scaffold(
            appBar: const HeaderAppBar(),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TopWidget(),
                    const OutlineWidget(),
                    const TicketsWidget(),
                    //ScheduleWidget(),
                    const SpeakersWidget(),
                    const SponsorsWidget(),
                    const VenueWidget(),
                    const About2024Widget(),
                    //QAWidget(),
                    //OrganizersWidget(),
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
