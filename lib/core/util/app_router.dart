import 'package:go_router/go_router.dart';
import 'package:my_store/feature/home/presentation/view/widgets/details_item_view/details_item_view.dart';
import 'package:my_store/feature/sign_in_log_in/presentation/view/log_in_view.dart';
import 'package:my_store/feature/sign_in_log_in/presentation/view/rest_password_view.dart';

import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/home/presentation/view/widgets/search_view/search_view.dart';
import '../../feature/onboarding/presentation/view/onboarding_view.dart';
import '../../feature/sign_in_log_in/presentation/view/sign_in_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static final String kOnboardingView = '/OnboardingView';
  static final String kSignInView = '/SignInView';
  static final String kLogInView = '/LogInView';
  static final String kRestPasswordView = '/RestPasswordView';
  static final String kHomeView = '/HomeView';
  static final String kDetailsItemView = '/DetailsItemView';
  static final String kSearchView = '/SearchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),

      GoRoute(path: kLogInView, builder: (context, state) => const LogInView()),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kRestPasswordView,
        builder: (context, state) => RestPasswordView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path:kDetailsItemView , builder: (context, state) => DetailsItemView()),
      GoRoute(path:kSearchView , builder: (context, state) => SearchView()),
    ],
  );
}
