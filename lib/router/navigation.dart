import 'package:flutter/material.dart';

class NavigationManager {
  static NavigationManager instance = NavigationManager._();
  final GlobalKey<NavigatorState> _navigatorKey;
  String _currentNamedRoute = '/';

  NavigationManager._() : _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  String get route => _currentNamedRoute;

  Future<dynamic> pushNamed(String route, {Object arguments}) {
    _currentNamedRoute = route;
    return _navigatorKey.currentState.pushNamed(
      route,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String route, {
    Object arguments,
    RoutePredicate predicate,
  }) {
    _currentNamedRoute = route;
    return _navigatorKey.currentState.pushNamedAndRemoveUntil(
      route,
      predicate ?? (_) => false,
      arguments: arguments,
    );
  }

  Future<dynamic> replaceIfNotCurrent(String route) {
    _currentNamedRoute = route;
    return _navigatorKey.currentState.pushNamedAndRemoveUntil(
      route,
      (r) => route != r.settings.name,
    );
  }

  Future<dynamic> pushReplacementNamed(String route) {
    return _navigatorKey.currentState.pushReplacementNamed(route);
  }

  void popUntilAndPushNamed(
    String untilRoute,
    String route, {
    Object arguments,
  }) {
    _currentNamedRoute = route;
    popUntil(untilRoute);
    pushNamed(route, arguments: arguments);
  }

  void pop<T>([T result]) => _navigatorKey.currentState.pop(result);

  void popUntil(String route) =>
      _navigatorKey.currentState.popUntil((r) => route == r.settings.name);
}
