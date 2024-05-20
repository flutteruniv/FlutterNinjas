import 'package:flutter/material.dart';
import 'package:flutterninjas/presentation/lp_schedule_widget.dart';
import 'package:flutterninjas/presentation/lp_venue_widget.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_footer_widget.dart';
import 'lp_model.dart';
import 'lp_organizers_widget.dart';
import 'lp_outline_widget.dart';
import 'lp_qa_widget.dart';
import 'lp_speakers_widget.dart';
import 'lp_sponsors_widget.dart';
import 'lp_tickets_widget.dart';
import 'lp_top_widget.dart';

class LPPage extends StatelessWidget {
  const LPPage({super.key});
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LPModel>(
      create: (_) => LPModel(),
      builder: (context, child) {
        return ResponsiveBuilder(builder: (context, sizingInformation) {
          context.read<LPModel>().setSizingInformation(sizingInformation);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.backgroundNavy,
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 36,
                      child: Image.asset('resources/images/fn3B.png'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SelectableText(
                      'FlutterNinjas',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.ninjaBlack,
                      ),
                      onPressed: () {
                        launchUrlString(
                            'https://ti.to/flutterninjas/tokyo-2024');
                      },
                      child: const Text(
                        'Buy Ticket',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: const SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TopWidget(),
                    OutlineWidget(),
                    TicketsWidget(),
                    ScheduleWidget(),
                    SpeakersWidget(),
                    SponsorsWidget(),
                    VenueWidget(),
                    QAWidget(),
                    OrganizersWidget(),
                    FooterWidget(),
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
