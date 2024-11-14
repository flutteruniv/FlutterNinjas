import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              'FlutterNinjas 2025',
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
                launchUrlString('https://ti.to/flutterninjas/tokyo-2025');
              },
              child: const Text(
                'Buy Ticket',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
