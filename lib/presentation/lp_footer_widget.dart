import 'package:flutter/material.dart';
import 'package:flutterninjas/presentation/tokusho_page.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../config/app_color.dart';
import 'privacy_page.dart';
import 'term_page.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 32,
            )
          : const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 64,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        'Terms',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TermPage.route),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        'Privacy Policy',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(PrivacyPolicyPage.route),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        'Act on specified commercial transactions',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TokushoPage.route),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        'Company',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => launchUrlString('https://kboy.jp'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        'X(Twitter)',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () =>
                          launchUrlString('https://twitter.com/FlutterNinjas'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      child: Text(
                        '2024 Edition',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () =>
                          launchUrlString('https://flutterninjas.dev/2024'),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SelectableText(
                      '© 2025 FlutterNinjas',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        'Term',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TermPage.route),
                    ),
                    const VerticalLine(),
                    InkWell(
                      child: Text(
                        'Privacy Policy',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(PrivacyPolicyPage.route),
                    ),
                    const VerticalLine(),
                    InkWell(
                      child: Text(
                        'Act on specified commercial transactions',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => context.go(TokushoPage.route),
                    ),
                    const VerticalLine(),
                    InkWell(
                      child: Text(
                        'Company',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () => launchUrlString('https://kboy.jp'),
                    ),
                    const VerticalLine(),
                    InkWell(
                      child: Text(
                        'X(Twitter)',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () =>
                          launchUrlString('https://twitter.com/FlutterNinjas'),
                    ),
                    const VerticalLine(),
                    InkWell(
                      child: Text(
                        '2024 Edition',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                      onTap: () =>
                          launchUrlString('https://flutterninjas.dev/2024'),
                    ),
                    const Spacer(),
                    SelectableText(
                      '© 2025 FlutterNinjas',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 1,
      height: 24,
      color: AppColor.primaryBlue,
    );
  }
}
