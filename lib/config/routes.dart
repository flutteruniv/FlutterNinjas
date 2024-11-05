import 'package:flutterninjas/presentation/2024/lp_2024_page.dart';
import 'package:flutterninjas/presentation/tokusho_page.dart';
import 'package:go_router/go_router.dart';

import '../presentation/lp_page.dart';
import '../presentation/privacy_page.dart';
import '../presentation/term_page.dart';

class Routes {
  Routes._();
  static final instance = Routes._();

  final router = GoRouter(
    initialLocation: LPPage.route,
    routes: [
      // LP
      GoRoute(
        path: LPPage.route,
        builder: (context, state) => const LPPage(),
      ),
      // 特定商取引法に基づく表示
      GoRoute(
        path: TokushoPage.route,
        builder: (context, state) => const TokushoPage(),
      ),
      // 利用規約
      GoRoute(
        path: TermPage.route,
        builder: (context, state) => const TermPage(),
      ),
      // プライバシーポリシー
      GoRoute(
        path: PrivacyPolicyPage.route,
        builder: (context, state) => const PrivacyPolicyPage(),
      ),
      GoRoute(
        path: LP2024Page.route,
        builder: (context, state) => const LP2024Page(),
      ),
    ],
    errorPageBuilder: (context, state) {
      return const NoTransitionPage(child: LPPage());
    },
  );
}
