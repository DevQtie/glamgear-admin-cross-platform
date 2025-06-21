import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/internal/core/orders_pages/orders.dart';
import 'package:glamgear/internal/core/orders_pages/reviews.dart';
import 'package:glamgear/internal/core/orders_pages/rtrn_ordrs_cncllatns.dart';
import 'package:glamgear/internal/core/products_pages/mng_prdcts.dart';
import 'package:glamgear/internal/core/users_pages/disbld_usrs.dart';
import 'package:glamgear/internal/core/users_pages/nw_usrs.dart';
import 'package:glamgear/internal/core/users_pages/reglr_usrs.dart';
import 'package:glamgear/internal/dashboard.dart';
import 'package:glamgear/internal/dashboard_page.dart';
import 'package:glamgear/signing_pages/sign_up_opt.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/internal/account_page/account.dart';
import 'package:glamgear/internal/account_page/settings.dart';
import 'package:glamgear/internal/core/products_pages/add_prdcts.dart';
import 'package:glamgear/internal/message_page/message.dart';
import 'package:glamgear/signing_pages/chnge_pword.dart';
import 'package:glamgear/signing_pages/prvcy_plcy.dart';
import 'package:glamgear/signing_pages/access_thru_mble_n.dart';
import 'package:glamgear/signing_pages/sign_in_thru_pw.dart';
import 'package:glamgear/signing_pages/sign_in_opt.dart';
import 'package:glamgear/signing_pages/trms_of_srvc.dart';

class RouteTransitions {
  static CustomTransitionPage _slideTransitionRtLVv(
    GoRouterState state,
    Widget page,
  ) {
    //Right to Left and Vice Versa
    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  // static CustomTransitionPage _slideTransitionLtRVv( // reserved for future use
  //     GoRouterState state, Widget page) {
  //   //Left to Right and Vice Versa
  //   return CustomTransitionPage(
  //     key: state.pageKey,
  //     child: page,
  //     transitionDuration: const Duration(milliseconds: 250),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(-1.0, 0.0);
  //       const end = Offset.zero;
  //       const curve = Curves.ease;

  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //       var offsetAnimation = animation.drive(tween);

  //       return SlideTransition(
  //         position: offsetAnimation,
  //         child: child,
  //       );
  //     },
  //   );
  // }

  static CustomTransitionPage _slideTransitionBtTVv(
    GoRouterState state,
    Widget page,
  ) {
    //Bottom to Top and Vice Versa
    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  static CustomTransitionPage _slideTransitionTtBVv(
    GoRouterState state,
    Widget page,
  ) {
    //Top to Bottom and Vice Versa
    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, -1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  // static CustomTransitionPage _fadeTransition(GoRouterState state, Widget page) { // reserved for future use
  //   return CustomTransitionPage(
  //     key: state.pageKey,
  //     child: page,
  //     transitionDuration: const Duration(milliseconds: 250),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       return FadeTransition(
  //         opacity: animation,
  //         child: child,
  //       );
  //     },
  //   );
  // }

  static CustomTransitionPage _slideTransitionFromCenter(
    GoRouterState state,
    Widget page,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(scale: animation, child: child);
      },
    );
  }

  static CustomTransitionPage _noTransition(GoRouterState state, Widget page) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: Duration.zero,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          child,
    );
  }

  static final rootKey = GlobalKey<NavigatorState>();
  final _homeKey = GlobalKey<NavigatorState>();
  final _jewelryKey = GlobalKey<NavigatorState>();
  final _luxuryBagKey = GlobalKey<NavigatorState>();
  final _gadgetKey = GlobalKey<NavigatorState>();
  final _othersKey = GlobalKey<NavigatorState>();

  final _manageProdKey = GlobalKey<NavigatorState>();
  final _addProdKey = GlobalKey<NavigatorState>();
  final _orderListKey = GlobalKey<NavigatorState>();
  final _retCanOrdersKey = GlobalKey<NavigatorState>();
  final _reviewsKey = GlobalKey<NavigatorState>();
  final _newUsersKey = GlobalKey<NavigatorState>();
  final _regUsersKey = GlobalKey<NavigatorState>();
  final _disUsersKey = GlobalKey<NavigatorState>();
  final _cartKey = GlobalKey<NavigatorState>();
  final _chatKey = GlobalKey<NavigatorState>();
  final _accountKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    // subject for thorough review, there are redundant configuration of routes and GoRouter here
    navigatorKey: rootKey,
    initialLocation: '/home-b', //'/',
    // routerNeglect: true, // not recommended for now
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const SignInOptions()),
        routes: [
          GoRoute(
            path: 'sign-in-thru-password',
            pageBuilder: (context, state) =>
                _slideTransitionBtTVv(state, const SignInThruPassword()),
          ),
          GoRoute(
            path: 'terms-of-service',
            pageBuilder: (context, state) =>
                _slideTransitionBtTVv(state, const TermsOfService()),
            routes: [
              GoRoute(
                path: 'privacy-policy',
                pageBuilder: (context, state) =>
                    _slideTransitionBtTVv(state, const PrivacyPolicy()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/add-products',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const AddProducts()),
      ), // for testing purposes
      GoRoute(
        path: '/change-pword',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const ChangePword()),
      ),
      GoRoute(
        path: '/terms-of-service',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const TermsOfService()),
      ),
      GoRoute(
        path: '/privacy-policy',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const PrivacyPolicy()),
      ),
      GoRoute(
        path: '/sign-up-opt',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const SignUpOptions()),
      ),
      GoRoute(
        path: '/sign-up-opt',
        pageBuilder: (context, state) =>
            _slideTransitionTtBVv(state, const SignUpOptions()),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            Dashboard(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeKey,
            routes: [
              GoRoute(
                path: '/home-b',
                pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey, child: DashboardPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _addProdKey,
            routes: [
              GoRoute(
                path: '/add-products-b',
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: AddProducts(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _manageProdKey,
            routes: [
              GoRoute(
                path: '/manage-products-b',
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: ManageProducts(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _orderListKey,
            routes: [
              GoRoute(
                path: '/order-list-b',
                pageBuilder: (context, state) =>
                    NoTransitionPage(key: state.pageKey, child: Orders()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _retCanOrdersKey,
            routes: [
              GoRoute(
                path: '/return-and-cancellations-orders-b',
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: ReturnCancellationsOrders(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _reviewsKey,
            routes: [
              GoRoute(
                path: '/reviews-b',
                pageBuilder: (context, state) =>
                    NoTransitionPage(key: state.pageKey, child: Reviews()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _newUsersKey,
            routes: [
              GoRoute(
                path: '/new-users-b',
                pageBuilder: (context, state) =>
                    NoTransitionPage(key: state.pageKey, child: NewUsers()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _regUsersKey,
            routes: [
              GoRoute(
                path: '/regular-users-b',
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: RegularUsers(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _disUsersKey,
            routes: [
              GoRoute(
                path: '/disabled-users-b',
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: DisabledUsers(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _chatKey,
            routes: [
              GoRoute(
                path: '/chat-b',
                pageBuilder: (context, state) =>
                    NoTransitionPage(key: state.pageKey, child: Message()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _accountKey,
            routes: [
              GoRoute(
                path: '/account-b',
                pageBuilder: (context, state) =>
                    _slideTransitionBtTVv(state, const Account()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/chat',
        pageBuilder: (context, state) =>
            _slideTransitionBtTVv(state, const Message()),
      ),
      GoRoute(
        path: '/account',
        pageBuilder: (context, state) =>
            _slideTransitionRtLVv(state, const Account()),
      ),
      GoRoute(
        path: '/settings',
        pageBuilder: (context, state) =>
            _slideTransitionRtLVv(state, const Settings()),
      ),
    ],
  );
}
