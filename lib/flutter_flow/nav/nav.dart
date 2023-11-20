import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? DisclaimerpageWidget()
          : LoginpageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? DisclaimerpageWidget()
              : LoginpageWidget(),
        ),
        FFRoute(
          name: 'Selectionpage',
          path: '/selectionpage',
          builder: (context, params) => SelectionpageWidget(),
        ),
        FFRoute(
          name: 'Questionpage',
          path: '/questionpage',
          builder: (context, params) => QuestionpageWidget(),
        ),
        FFRoute(
          name: 'Loginpage',
          path: '/loginpage',
          builder: (context, params) => LoginpageWidget(),
        ),
        FFRoute(
          name: 'Signuppage',
          path: '/signuppage',
          builder: (context, params) => SignuppageWidget(),
        ),
        FFRoute(
          name: 'Reportpage_6_Sucess',
          path: '/reportpage6Sucess',
          builder: (context, params) => Reportpage6SucessWidget(),
        ),
        FFRoute(
          name: 'Disclaimerpage',
          path: '/disclaimerpage',
          builder: (context, params) => DisclaimerpageWidget(),
        ),
        FFRoute(
          name: 'Confirmpage',
          path: '/confirmpage',
          builder: (context, params) => ConfirmpageWidget(),
        ),
        FFRoute(
          name: 'up',
          path: '/up',
          builder: (context, params) => UpWidget(),
        ),
        FFRoute(
          name: 'Searchpage',
          path: '/searchpage',
          builder: (context, params) => SearchpageWidget(),
        ),
        FFRoute(
          name: 'Reportpage_4_Benefits',
          path: '/reportpage4Benefits',
          builder: (context, params) => Reportpage4BenefitsWidget(),
        ),
        FFRoute(
          name: 'Q_01',
          path: '/q01',
          builder: (context, params) => Q01Widget(),
        ),
        FFRoute(
          name: 'Q_02',
          path: '/q02',
          builder: (context, params) => Q02Widget(),
        ),
        FFRoute(
          name: 'Q_03',
          path: '/q03',
          builder: (context, params) => Q03Widget(),
        ),
        FFRoute(
          name: 'Q_04',
          path: '/q04',
          builder: (context, params) => Q04Widget(),
        ),
        FFRoute(
          name: 'Q_05',
          path: '/q05',
          builder: (context, params) => Q05Widget(),
        ),
        FFRoute(
          name: 'Q_06',
          path: '/q06',
          builder: (context, params) => Q06Widget(),
        ),
        FFRoute(
          name: 'Q_07',
          path: '/q07',
          builder: (context, params) => Q07Widget(),
        ),
        FFRoute(
          name: 'Q_08',
          path: '/q08',
          builder: (context, params) => Q08Widget(),
        ),
        FFRoute(
          name: 'Q_09',
          path: '/q09',
          builder: (context, params) => Q09Widget(),
        ),
        FFRoute(
          name: 'Q_10',
          path: '/q10',
          builder: (context, params) => Q10Widget(),
        ),
        FFRoute(
          name: 'Q_11',
          path: '/q11',
          builder: (context, params) => Q11Widget(),
        ),
        FFRoute(
          name: 'Q_12',
          path: '/q12',
          builder: (context, params) => Q12Widget(),
        ),
        FFRoute(
          name: 'Q_13',
          path: '/q13',
          builder: (context, params) => Q13Widget(),
        ),
        FFRoute(
          name: 'Q_14',
          path: '/q14',
          builder: (context, params) => Q14Widget(),
        ),
        FFRoute(
          name: 'Q_15',
          path: '/q15',
          builder: (context, params) => Q15Widget(),
        ),
        FFRoute(
          name: 'Q_16',
          path: '/q16',
          builder: (context, params) => Q16Widget(),
        ),
        FFRoute(
          name: 'Q_17',
          path: '/q17',
          builder: (context, params) => Q17Widget(),
        ),
        FFRoute(
          name: 'Q_18',
          path: '/q18',
          builder: (context, params) => Q18Widget(),
        ),
        FFRoute(
          name: 'Q_19',
          path: '/q19',
          builder: (context, params) => Q19Widget(),
        ),
        FFRoute(
          name: 'Q_20',
          path: '/q20',
          builder: (context, params) => Q20Widget(),
        ),
        FFRoute(
          name: 'Q_21',
          path: '/q21',
          builder: (context, params) => Q21Widget(),
        ),
        FFRoute(
          name: 'Q_22',
          path: '/q22',
          builder: (context, params) => Q22Widget(),
        ),
        FFRoute(
          name: 'Q_23',
          path: '/q23',
          builder: (context, params) => Q23Widget(),
        ),
        FFRoute(
          name: 'Q_24',
          path: '/q24',
          builder: (context, params) => Q24Widget(),
        ),
        FFRoute(
          name: 'Q_25',
          path: '/q25',
          builder: (context, params) => Q25Widget(),
        ),
        FFRoute(
          name: 'Q_26',
          path: '/q26',
          builder: (context, params) => Q26Widget(),
        ),
        FFRoute(
          name: 'Q_27',
          path: '/q27',
          builder: (context, params) => Q27Widget(),
        ),
        FFRoute(
          name: 'Q_28',
          path: '/q28',
          builder: (context, params) => Q28Widget(),
        ),
        FFRoute(
          name: 'Q_29',
          path: '/q29',
          builder: (context, params) => Q29Widget(),
        ),
        FFRoute(
          name: 'Q_30',
          path: '/q30',
          builder: (context, params) => Q30Widget(),
        ),
        FFRoute(
          name: 'Reportpage_2_Overview',
          path: '/reportpage2Overview',
          builder: (context, params) => Reportpage2OverviewWidget(),
        ),
        FFRoute(
          name: 'Reportpage_3_Indicators',
          path: '/reportpage3Indicators',
          builder: (context, params) => Reportpage3IndicatorsWidget(),
        ),
        FFRoute(
          name: 'Reportpage_5_Course',
          path: '/reportpage5Course',
          builder: (context, params) => Reportpage5CourseWidget(),
        ),
        FFRoute(
          name: 'Reportpage_1_Score',
          path: '/reportpage1Score',
          builder: (context, params) => Reportpage1ScoreWidget(),
        ),
        FFRoute(
          name: 'Treatmentstatuspage_edit',
          path: '/treatmentstatuspageEdit',
          builder: (context, params) => TreatmentstatuspageEditWidget(
            toggleselected: params.getParam('toggleselected', ParamType.Color),
          ),
        ),
        FFRoute(
          name: 'Searchresultpage',
          path: '/searchresultpage',
          builder: (context, params) => SearchresultpageWidget(),
        ),
        FFRoute(
          name: 'Selecttreatmentpage',
          path: '/selecttreatmentpage',
          builder: (context, params) => SelecttreatmentpageWidget(),
        ),
        FFRoute(
          name: 'Forgotpasswordpage',
          path: '/forgotpasswordpage',
          builder: (context, params) => ForgotpasswordpageWidget(),
        ),
        FFRoute(
          name: 'Treatmentstatuspage',
          path: '/treatmentstatuspage',
          builder: (context, params) => TreatmentstatuspageWidget(),
        ),
        FFRoute(
          name: 'Searchresult',
          path: '/searchresult',
          builder: (context, params) => SearchresultWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/loginpage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  child: Image.asset(
                    'assets/images/Asset_1@4x-8.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
