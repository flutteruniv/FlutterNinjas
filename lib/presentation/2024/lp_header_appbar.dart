import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class Header2024AppBar extends StatelessWidget implements PreferredSizeWidget {
  const Header2024AppBar({
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
              'FlutterNinjas 2024',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
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
