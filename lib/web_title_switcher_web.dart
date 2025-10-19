/*
 * @ Author: Flutter Journey 🎯 <flutterjourney.org@gmail.com>
 * @ Created: 2024-12-09 13:15:47
 * @ Message: You look very hardworking 👨‍💻. Keep focusing on your goals. 🌤️
 */

// web_title_switcher_web.dart

// ignore: avoid_web_libraries_in_flutter


import 'package:flutter/material.dart';

class WebTitleSwitcher extends StatefulWidget {
  const WebTitleSwitcher({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<WebTitleSwitcher> createState() => _WebTitleSwitcherWebState();
}

class _WebTitleSwitcherWebState extends State<WebTitleSwitcher> {
  bool _isTabActive = true;

  @override
  void initState() {
    super.initState();
    // Register blur and focus events

  }

  @override
  void dispose() {
    // Remove event listeners
    //html.window.removeEventListener('blur', _handleBlurEvent);
    //html.window.removeEventListener('focus', _handleFocusEvent);
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
