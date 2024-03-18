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
    ],
    errorPageBuilder: (context, state) {
      return const NoTransitionPage(child: LPPage());
    },
  );
}
